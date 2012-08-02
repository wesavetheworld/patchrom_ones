.class public abstract Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;
.super Landroid/os/AsyncTask;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "DetailsViewAsyncTaskBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mHeavyTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsEditable:Z

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "isEditable"

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 188
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 189
    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mIsEditable:Z

    .line 195
    iput-object p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    .line 196
    iput-boolean p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mIsEditable:Z

    .line 197
    return-void
.end method


# virtual methods
.method public SafeShow(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 378
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 380
    :cond_0
    const-string v0, "[DetailsViewHelper]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SafeShow] Dialog NG. dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 388
    :cond_2
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[SafeShow] Activity has finished."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelAllHeavyTasks()V
    .locals 6

    .prologue
    .line 349
    const-string v3, "[DetailsViewHelper]"

    const-string v4, "[DetailsViewAsyncTaskBase][cancelAllHeavyTasks]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 352
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    .line 353
    .local v0, heavytasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/AsyncTask;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    .line 355
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    .line 357
    .local v2, task:Landroid/os/AsyncTask;
    if-eqz v2, :cond_0

    .line 358
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 360
    .end local v2           #task:Landroid/os/AsyncTask;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    .end local v0           #heavytasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/AsyncTask;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 363
    :cond_2
    const-string v3, "[DetailsViewHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[cancelAllHeavyTasks]mHeavyTasks = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->getDetailsViewData()Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->doInBackground([Ljava/lang/Void;)Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getDetailsView(Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)Landroid/widget/ScrollView;
    .locals 14
    .parameter "result"

    .prologue
    const v13, 0x7f09002a

    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 257
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[DetailsViewAsyncTaskBase][getDetailsView][+]"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-nez p1, :cond_0

    .line 260
    const-string v10, "[DetailsViewHelper]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getDetailsView] result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 344
    :goto_0
    return-object v6

    .line 264
    :cond_0
    iget-object v10, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 265
    .local v2, Inflater:Landroid/view/LayoutInflater;
    if-nez v2, :cond_1

    .line 267
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[getDetailsView]inflater is null"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 268
    goto :goto_0

    .line 271
    :cond_1
    const v10, 0x7f03000e

    invoke-virtual {v2, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 273
    .local v6, scrollview:Landroid/widget/ScrollView;
    if-nez v6, :cond_2

    .line 275
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[getDetailsView]scrollview is null"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 276
    goto :goto_0

    .line 278
    :cond_2
    const v10, 0x7f090023

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 279
    .local v0, DetailsViewContainer:Landroid/view/ViewGroup;
    if-nez v0, :cond_3

    .line 281
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[getDetailsView]DetailsViewContainer is null"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 282
    goto :goto_0

    .line 287
    :cond_3
    const/4 v1, 0x0

    .line 288
    .local v1, ImageTitleListItem:Landroid/view/ViewGroup;
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[DetailsViewAsyncTask_FromDRMProtectInfo][showResult] get imageView"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->isEditable()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 291
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[DetailsViewAsyncTaskBase][getDetailsView] listitem_image_title"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const v10, 0x7f03000b

    invoke-virtual {v2, v10, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #ImageTitleListItem:Landroid/view/ViewGroup;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 294
    .restart local v1       #ImageTitleListItem:Landroid/view/ViewGroup;
    if-nez v1, :cond_4

    .line 296
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[getDetailsView]ImageViewListItem is null"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 297
    goto :goto_0

    .line 300
    :cond_4
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 302
    .local v7, textview:Landroid/widget/TextView;
    if-nez v7, :cond_5

    .line 304
    const-string v10, "[DetailsViewHelper]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getDetailsView] mTextView = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 305
    goto/16 :goto_0

    .line 307
    :cond_5
    iget-object v9, p1, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .end local v7           #textview:Landroid/widget/TextView;
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 332
    const-string v9, "[DetailsViewHelper]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getDetailsView]result.getInfo() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->getInfo()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->getInfo()Ljava/util/ArrayList;

    move-result-object v5

    .line 334
    .local v5, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;>;"
    const/4 v3, 0x0

    .line 335
    .local v3, hasError:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-nez v3, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_a

    .line 337
    iget-object v10, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;

    #calls: Lcom/htc/album/helper/DetailsViewHelper;->getTwoLineText_ListItem(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;)Landroid/widget/LinearLayout;
    invoke-static {v10, v2, v0, v9}, Lcom/htc/album/helper/DetailsViewHelper;->access$000(Lcom/htc/album/helper/DetailsViewHelper;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 338
    .local v8, twolinetext_listitem:Landroid/widget/LinearLayout;
    if-eqz v8, :cond_9

    .line 339
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 335
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 312
    .end local v3           #hasError:Z
    .end local v4           #i:I
    .end local v5           #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;>;"
    .end local v8           #twolinetext_listitem:Landroid/widget/LinearLayout;
    :cond_6
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[DetailsViewAsyncTaskBase][getDetailsView] listitem_image_title_non_editable"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const v10, 0x7f03000c

    invoke-virtual {v2, v10, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #ImageTitleListItem:Landroid/view/ViewGroup;
    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 314
    .restart local v1       #ImageTitleListItem:Landroid/view/ViewGroup;
    if-nez v1, :cond_7

    .line 316
    const-string v10, "[DetailsViewHelper]"

    const-string v11, "[getDetailsView]ImageViewListItem is null"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 317
    goto/16 :goto_0

    .line 319
    :cond_7
    invoke-virtual {v1, v13}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 320
    .local v7, textview:Lcom/htc/widget/HtcListItem1LineCenteredText;
    if-nez v7, :cond_8

    .line 322
    const-string v10, "[DetailsViewHelper]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getDetailsView] mTextView = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 323
    goto/16 :goto_0

    .line 325
    :cond_8
    iget-object v9, p1, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 341
    .end local v7           #textview:Lcom/htc/widget/HtcListItem1LineCenteredText;
    .restart local v3       #hasError:Z
    .restart local v4       #i:I
    .restart local v5       #info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;>;"
    .restart local v8       #twolinetext_listitem:Landroid/widget/LinearLayout;
    :cond_9
    const-string v9, "[DetailsViewHelper]"

    const-string v10, "[getDetailsView]twolinetext_listitem  is null."

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 343
    .end local v8           #twolinetext_listitem:Landroid/widget/LinearLayout;
    :cond_a
    const-string v9, "[DetailsViewHelper]"

    const-string v10, "[DetailsViewAsyncTaskBase][getDetailsView][-]"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected abstract getDetailsViewData()Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEditable()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mIsEditable:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[DetailsViewAsyncTaskBase][onCancelled][+]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 232
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->cancelAllHeavyTasks()V

    .line 238
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[DetailsViewAsyncTaskBase][onCancelled][-]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 235
    :cond_0
    const-string v0, "[DetailsViewHelper]"

    const-string v1, "[DetailsViewAsyncTaskBase] mDetailsDialog is null."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 207
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewAsyncTaskBase][onPostExecute][+]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewAsyncTaskBase][onPostExecute]Task has cancelled."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewAsyncTaskBase][onPostExecute][-]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->getDetailsView(Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)Landroid/widget/ScrollView;

    move-result-object v0

    .line 215
    .local v0, scrollview:Landroid/widget/ScrollView;
    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewAsyncTaskBase][onPostExecute]Task has cancelled."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V

    goto :goto_0

    .line 222
    :cond_2
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewAsyncTaskBase][onPostExecute]scrollview is null."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    check-cast p1, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->onPostExecute(Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V

    return-void
.end method

.method protected abstract showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
.end method