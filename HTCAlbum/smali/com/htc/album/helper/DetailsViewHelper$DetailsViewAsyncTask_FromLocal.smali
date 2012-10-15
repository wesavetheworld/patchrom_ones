.class public Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;
.super Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DetailsViewAsyncTask_FromLocal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field private mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field public mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

.field private mPos:I

.field mViewSingle:Z

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"
    .parameter "callback"
    .parameter "isEditable"

    .prologue
    const/4 v1, 0x0

    .line 749
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    .line 750
    invoke-direct {p0, p1, p2, p8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Z)V

    .line 735
    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 736
    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mViewSingle:Z

    .line 738
    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 751
    iput p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mPos:I

    .line 752
    iput-object p4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 753
    iput-object p5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 754
    iput-boolean p6, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mViewSingle:Z

    .line 755
    iput-object p7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 756
    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 731
    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 731
    invoke-direct/range {p0 .. p7}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "adapter"
    .parameter "pos"
    .parameter "curImage"
    .parameter "oldName"
    .parameter "newName"
    .parameter "subFileName"

    .prologue
    .line 1281
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewHelper][renameFile][+]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const/4 v10, 0x0

    .line 1283
    .local v10, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    if-nez p2, :cond_2

    .line 1289
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "null adapter"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1293
    :cond_2
    if-nez p4, :cond_3

    .line 1295
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[renameFile] null image found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1299
    :cond_3
    const/4 v1, 0x0

    const v2, 0x7f0a0042

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v9

    .line 1306
    .local v9, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v0, 0x0

    .line 1307
    .local v0, renameThread:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;

    .end local v0           #renameThread:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    .restart local v0       #renameThread:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;
    invoke-virtual {v0, v9}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->setProgressDialogRef(Lcom/htc/app/HtcProgressDialog;)V

    .line 1309
    invoke-virtual {v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$RenameThread;->start()V

    .line 1310
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewHelper][renameFile][-]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLatLngDetails(Landroid/content/Context;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;Ljava/util/HashMap;)V
    .locals 5
    .parameter "context"
    .parameter "detailsViewDataInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/high16 v2, 0x437f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1534
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1536
    :cond_0
    const-string v1, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setLatLngDetails] Null reference. ,context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,detailsViewDataInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,exifData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    :cond_1
    :goto_0
    return-void

    .line 1543
    :cond_2
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v0

    .line 1544
    .local v0, latlng:[F
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v1, :cond_1

    .line 1546
    aget v1, v0, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    aget v1, v0, v4

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1552
    const v1, 0x7f0a0086

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const v1, 0x7f0a0087

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget v2, v0, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p2, v1, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->setLatLong(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected getDetailsViewData()Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
    .locals 37

    .prologue
    .line 976
    const-string v33, "[DetailsViewHelper]"

    const-string v34, "[DetailsViewAsyncTask_FromLocal][getDetailsViewData][+]"

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v9, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Lcom/htc/album/helper/DetailsViewHelper$1;)V

    .line 980
    .local v9, detailsViewDataInfo:Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    .line 981
    .local v16, imgName:Ljava/lang/String;
    const-string v17, ""

    .line 982
    .local v17, imgSubName:Ljava/lang/String;
    const-string v33, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v29

    .line 983
    .local v29, subFileIndex:I
    const/16 v33, -0x1

    move/from16 v0, v29

    move/from16 v1, v33

    if-eq v0, v1, :cond_0

    .line 984
    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 985
    .local v30, tmpSubName:Ljava/lang/String;
    move-object/from16 v17, v30

    .line 986
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 988
    .end local v30           #tmpSubName:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->setImageFileName(Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->setImageSubFileName(Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mViewSingle:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    const-string v33, "file"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 997
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v14

    .line 998
    .local v14, fullPathName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 999
    .local v25, pathName:Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 1000
    const/16 v23, 0x0

    .line 1001
    .local v23, nStart:I
    const/16 v33, 0x2f

    move/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    .line 1002
    .local v22, nLastIndex:I
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 1003
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1006
    .end local v22           #nLastIndex:I
    .end local v23           #nStart:I
    :cond_2
    if-eqz v25, :cond_3

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a0073

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    .end local v14           #fullPathName:Ljava/lang/String;
    .end local v25           #pathName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mViewSingle:Z

    move/from16 v33, v0

    if-nez v33, :cond_5

    .line 1016
    const-string v8, ""

    .line 1028
    .local v8, dateString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v6

    .line 1029
    .local v6, dateSort:J
    const-wide/16 v33, 0x0

    cmp-long v33, v6, v33

    if-nez v33, :cond_4

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v33

    const-wide/16 v35, 0x3e8

    mul-long v6, v33, v35

    .line 1032
    const-wide/16 v33, 0x0

    cmp-long v33, v6, v33

    if-nez v33, :cond_4

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateAdded()J

    move-result-wide v33

    const-wide/16 v35, 0x3e8

    mul-long v6, v33, v35

    .line 1037
    :cond_4
    const-wide/16 v33, 0x0

    cmp-long v33, v6, v33

    if-eqz v33, :cond_5

    .line 1039
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1040
    .local v5, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1041
    .local v3, cal:Ljava/util/Calendar;
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1043
    const-string v33, "yyyy-MM-dd"

    move-object/from16 v0, v33

    invoke-static {v0, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1046
    const/16 v33, 0xb

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 1047
    .local v15, hour:I
    const/16 v33, 0xc

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 1051
    .local v21, min:I
    const/16 v33, 0xa

    move/from16 v0, v33

    if-ge v15, v0, :cond_a

    .line 1052
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " 0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1056
    :goto_0
    const/16 v33, 0xa

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    .line 1057
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":0"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1062
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_5

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a007d

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v9, v0, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v5           #date:Ljava/util/Date;
    .end local v6           #dateSort:J
    .end local v8           #dateString:Ljava/lang/String;
    .end local v15           #hour:I
    .end local v21           #min:I
    :cond_5
    const-string v20, ""

    .line 1072
    .local v20, lengthString:Ljava/lang/String;
    const-string v33, "[DetailsViewHelper]"

    const-string v34, "[DetailsViewAsyncTask_FromLocal][getDetailsViewData] get file size"

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v26

    .line 1075
    .local v26, recordLength:J
    const-wide/16 v33, -0x1

    cmp-long v33, v26, v33

    if-nez v33, :cond_6

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v31

    .line 1078
    .local v31, uri:Landroid/net/Uri;
    const-string v33, "file"

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1080
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 1082
    .local v24, path:Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v13, file:Ljava/io/File;
    const-string v33, "[DetailsViewHelper]"

    move-object/from16 v0, v33

    invoke-static {v13, v0}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1085
    invoke-virtual {v13}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v26

    .line 1092
    .end local v13           #file:Ljava/io/File;
    .end local v24           #path:Ljava/lang/String;
    .end local v31           #uri:Landroid/net/Uri;
    :cond_6
    :goto_2
    const-wide/16 v33, 0x0

    cmp-long v33, v26, v33

    if-lez v33, :cond_7

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 1096
    :cond_7
    const-string v33, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v4

    .line 1099
    .local v4, data:Ljava/io/InputStream;
    if-eqz v4, :cond_8

    .line 1100
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 1101
    .local v18, length:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 1103
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1111
    .end local v4           #data:Ljava/io/InputStream;
    .end local v18           #length:J
    :cond_8
    :goto_3
    const-string v33, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_9

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a0081

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->isCancelled()Z

    move-result v33

    if-eqz v33, :cond_c

    .line 1119
    const-string v33, "[DetailsViewHelper]"

    const-string v34, "[DetailsViewAsyncTask_FromLocal][getDetailsViewData]Task has cancelled. Get File Size."

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const/4 v9, 0x0

    .line 1198
    .end local v9           #detailsViewDataInfo:Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
    :goto_4
    return-object v9

    .line 1054
    .end local v20           #lengthString:Ljava/lang/String;
    .end local v26           #recordLength:J
    .restart local v3       #cal:Ljava/util/Calendar;
    .restart local v5       #date:Ljava/util/Date;
    .restart local v6       #dateSort:J
    .restart local v8       #dateString:Ljava/lang/String;
    .restart local v9       #detailsViewDataInfo:Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
    .restart local v15       #hour:I
    .restart local v21       #min:I
    :cond_a
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1059
    :cond_b
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 1087
    .end local v3           #cal:Ljava/util/Calendar;
    .end local v5           #date:Ljava/util/Date;
    .end local v6           #dateSort:J
    .end local v8           #dateString:Ljava/lang/String;
    .end local v15           #hour:I
    .end local v21           #min:I
    .restart local v20       #lengthString:Ljava/lang/String;
    .restart local v24       #path:Ljava/lang/String;
    .restart local v26       #recordLength:J
    .restart local v31       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 1088
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1105
    .end local v10           #e:Ljava/lang/Exception;
    .end local v24           #path:Ljava/lang/String;
    .end local v31           #uri:Landroid/net/Uri;
    .restart local v4       #data:Ljava/io/InputStream;
    :catch_1
    move-exception v11

    .line 1106
    .local v11, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1107
    .end local v11           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v33

    throw v33

    .line 1124
    .end local v4           #data:Ljava/io/InputStream;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v33

    if-nez v33, :cond_d

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v33

    if-nez v33, :cond_d

    .line 1126
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1128
    .local v28, resolution:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a0074

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    .end local v28           #resolution:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    move/from16 v33, v0

    if-eqz v33, :cond_e

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    check-cast v33, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    #calls: Lcom/htc/album/helper/DetailsViewHelper;->RetrieveVideoDetailsInfo(Landroid/content/Context;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V
    invoke-static {v0, v9, v1}, Lcom/htc/album/helper/DetailsViewHelper;->access$500(Landroid/content/Context;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V

    .line 1144
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->isCancelled()Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1146
    const-string v33, "[DetailsViewHelper]"

    const-string v34, "[DetailsViewAsyncTask_FromLocal][getDetailsViewData]Task has cancelled. Get Video information Duration , FrameRate, BitRate, File Type."

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1140
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a0082

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1151
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v33

    if-nez v33, :cond_10

    const-string v33, "video/x-wmv-drm"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1153
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a007e

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f0a0080

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :goto_6
    const/4 v12, 0x0

    .line 1168
    .local v12, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v12

    .line 1171
    :cond_11
    if-eqz v12, :cond_16

    .line 1173
    const-string v33, "Make"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 1174
    .local v32, value:Ljava/lang/String;
    if-eqz v32, :cond_12

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a0083

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_12
    const-string v33, "Model"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32           #value:Ljava/lang/String;
    check-cast v32, Ljava/lang/String;

    .line 1180
    .restart local v32       #value:Ljava/lang/String;
    if-eqz v32, :cond_13

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a0084

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_13
    const-string v33, "WhiteBalance"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32           #value:Ljava/lang/String;
    check-cast v32, Ljava/lang/String;

    .line 1186
    .restart local v32       #value:Ljava/lang/String;
    if-eqz v32, :cond_14

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/ExifUtil;->whiteBalanceToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    .line 1189
    :cond_14
    if-eqz v32, :cond_15

    const-string v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_15

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a0085

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v9, v12}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->setLatLngDetails(Landroid/content/Context;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;Ljava/util/HashMap;)V

    .line 1197
    .end local v32           #value:Ljava/lang/String;
    :cond_16
    const-string v33, "[DetailsViewHelper]"

    const-string v34, "[DetailsViewAsyncTask_FromLocal][getDetailsViewData][-]"

    invoke-static/range {v33 .. v34}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1156
    .end local v12           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0a007e

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f0a007f

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v9, v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method protected isEditable()Z
    .locals 4

    .prologue
    .line 760
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBurstPhoto()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mViewSingle:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mIsEditable:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 761
    .local v0, retval:Z
    :goto_0
    const-string v1, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DetailsViewAsyncTask_FromLocal] isEditable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return v0

    .line 760
    .end local v0           #retval:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoHaveExifInfo(Ljava/lang/String;)Z
    .locals 2
    .parameter "strMimetype"

    .prologue
    const/4 v0, 0x0

    .line 1596
    if-nez p1, :cond_1

    .line 1606
    :cond_0
    :goto_0
    return v0

    .line 1599
    :cond_1
    const-string v1, "image/jpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/jps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/mpo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1603
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCallBack(Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 1271
    const/4 v0, 0x0

    .line 1272
    .local v0, retval:Z
    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    if-eqz v1, :cond_0

    .line 1274
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 1275
    const/4 v0, 0x1

    .line 1277
    :cond_0
    return v0
.end method

.method protected showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
    .locals 17
    .parameter "scrollview"
    .parameter "result"

    .prologue
    .line 767
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DetailsViewAsyncTask_FromLocal][showResult][+]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 770
    :cond_0
    const-string v2, "[DetailsViewHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPostExecute] scrollview = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :goto_0
    return-void

    .line 775
    :cond_1
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DetailsViewAsyncTask_FromLocal][showResult] get imageView"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/4 v11, 0x0

    .line 777
    .local v11, imageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 779
    const v2, 0x7f090029

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #imageView:Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 787
    .restart local v11       #imageView:Landroid/widget/ImageView;
    :goto_1
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DetailsViewAsyncTask_FromLocal][showResult] start DecodeThumbTask"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    new-instance v7, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->mCurImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-direct {v7, v2, v3, v11, v4}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 789
    .local v7, DecodeThumbTask:Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v7, v2}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    const v2, 0x7f090023

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 793
    .local v6, scrollview_container:Landroid/view/ViewGroup;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->isLatLongLegal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 795
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DetailsViewAsyncTask_FromLocal][showResult] start GeocoderTask"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    new-instance v1, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->getLatitude()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->getLongitude()F

    move-result v5

    invoke-direct/range {v1 .. v6}, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;FFLandroid/view/ViewGroup;)V

    .line 797
    .local v1, geotask:Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    .end local v1           #geotask:Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;
    :cond_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 814
    .local v9, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 817
    const v2, 0x7f09002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 818
    .local v10, editText:Landroid/widget/EditText;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageFileName:Ljava/lang/String;

    .line 819
    .local v12, imgName:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageSubFileName:Ljava/lang/String;

    .line 820
    .local v13, imgSubName:Ljava/lang/String;
    const v2, 0x2040174

    new-instance v3, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v12, v13}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$2;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20401ee

    new-instance v4, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$1;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 865
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->SafeShow(Lcom/htc/widget/HtcAlertDialog;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 875
    .local v8, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->SafeShow(Lcom/htc/widget/HtcAlertDialog;)V

    .line 879
    const/4 v2, -0x1

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    .line 880
    .local v15, positiveBtn:Landroid/widget/Button;
    if-eqz v15, :cond_3

    .line 881
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 882
    :cond_3
    const/4 v2, -0x2

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    .line 883
    .local v14, negativeBtn:Landroid/widget/Button;
    if-eqz v14, :cond_4

    .line 884
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 886
    :cond_4
    new-instance v2, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8, v10}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$3;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;Lcom/htc/widget/HtcAlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 952
    .end local v8           #detailDlg:Lcom/htc/widget/HtcAlertDialog;
    .end local v10           #editText:Landroid/widget/EditText;
    .end local v12           #imgName:Ljava/lang/String;
    .end local v13           #imgSubName:Ljava/lang/String;
    .end local v14           #negativeBtn:Landroid/widget/Button;
    .end local v15           #positiveBtn:Landroid/widget/Button;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v3, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$5;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->SafeShow(Lcom/htc/widget/HtcAlertDialog;)V

    .line 969
    const-string v2, "[DetailsViewHelper]"

    const-string v3, "[DetailsViewAsyncTask_FromLocal][showResult][-]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 783
    .end local v6           #scrollview_container:Landroid/view/ViewGroup;
    .end local v7           #DecodeThumbTask:Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;
    .end local v9           #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_5
    const v2, 0x7f090029

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 784
    .local v16, quickbadge:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v11

    goto/16 :goto_1

    .line 941
    .end local v16           #quickbadge:Lcom/htc/widget/HtcListItemQuickContactBadge;
    .restart local v6       #scrollview_container:Landroid/view/ViewGroup;
    .restart local v7       #DecodeThumbTask:Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;
    .restart local v9       #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_6
    const v2, 0x2040174

    new-instance v3, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal$4;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;)V

    invoke-virtual {v9, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 946
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromLocal;->SafeShow(Lcom/htc/widget/HtcAlertDialog;)V

    goto :goto_2
.end method