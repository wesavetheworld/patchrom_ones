.class public Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
.super Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.source "AdapterLocalFolder.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterLocalFolder"

.field public static final STATE_LOAD_CACHE:I = 0x0

.field public static final STATE_LOAD_DATABASE:I = 0x1

.field private static final STATE_LOAD_UNKNOWN:I = -0x1


# instance fields
.field private mCollectionMgr:Lcom/htc/album/helper/FolderManager;

.field private mExtras:Landroid/os/Bundle;

.field private mIsEnableUpdateCache:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadState:I

.field private mNewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "activity"
    .parameter "handler"
    .parameter "mediaTypes"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;I)V

    .line 31
    new-instance v0, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FolderManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    .line 37
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    .line 39
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 44
    iput-object p4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method private doCustomize(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, originalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v9, "local"

    const-string v10, "local"

    const-string v11, ".fflist"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 345
    .local v1, hidden:Z
    if-nez v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v9, "local"

    const-string v10, "local"

    const-string v11, ".fflist"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 362
    .local v3, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-nez v3, :cond_1

    .line 364
    const-string v8, "AdapterLocalFolder"

    const-string v9, "[HTCAlbum][AdapterLocalFolder][doCustomize]: null list error..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    .line 369
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v2, 0x0

    .line 370
    .local v2, hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v7, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 373
    .local v4, nCount:I
    const/4 v5, 0x0

    .local v5, nHiddenIndex:I
    :goto_1
    if-le v4, v5, :cond_5

    .line 375
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v2       #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v2, :cond_3

    .line 373
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 378
    :cond_3
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v6, :cond_2

    .line 380
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 381
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 382
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 385
    .end local v6           #nIndex:I
    :cond_5
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 386
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public enableBroadcastNotify()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public enableCacheUpdate(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    .line 116
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    :cond_0
    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "AdapterLocalFolder"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 75
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/IMediaData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLastLoadState()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    return v0
.end method

.method public isCacheExist()Z
    .locals 5

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 98
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v2, "local"

    const-string v3, "local"

    const-string v4, ".flist"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/ObjectWriter/AlbumCacher;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 103
    return v0
.end method

.method public final isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, currentCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .local p2, newCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v1, 0x1

    .line 284
    .local v1, bResult:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v1

    .line 330
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 287
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 288
    .local v7, nQueriedCount:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 289
    .local v5, nCachedCount:I
    if-eq v7, v5, :cond_2

    .line 291
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: size differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 292
    .restart local v2       #bResult:I
    goto :goto_0

    .line 295
    .end local v2           #bResult:I
    :cond_2
    move v10, v7

    .line 296
    .local v10, totalCount:I
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_1
    if-le v10, v6, :cond_8

    .line 298
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 299
    .local v8, queriedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 300
    .local v3, cachedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v9

    .line 301
    .local v9, queriedImage:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v4

    .line 302
    .local v4, cachedImage:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 304
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: name differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 305
    .restart local v2       #bResult:I
    goto :goto_0

    .line 307
    .end local v2           #bResult:I
    :cond_3
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v12

    if-eq v11, v12, :cond_4

    .line 309
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: count differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 310
    .restart local v2       #bResult:I
    goto :goto_0

    .line 312
    .end local v2           #bResult:I
    :cond_4
    iget-wide v11, v9, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v13, v4, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    .line 314
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: item time differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 315
    .restart local v2       #bResult:I
    goto :goto_0

    .line 317
    .end local v2           #bResult:I
    :cond_5
    iget v11, v9, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iget v12, v4, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    if-eq v11, v12, :cond_6

    .line 319
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isSameCollection]: item degree of rotation differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 320
    .restart local v2       #bResult:I
    goto :goto_0

    .line 322
    .end local v2           #bResult:I
    :cond_6
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v12

    if-eq v11, v12, :cond_7

    .line 324
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: Media Type changed!!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 325
    .restart local v2       #bResult:I
    goto/16 :goto_0

    .line 296
    .end local v2           #bResult:I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 329
    .end local v3           #cachedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v4           #cachedImage:Lcom/htc/album/modules/collection/SimpleImage;
    .end local v8           #queriedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v9           #queriedImage:Lcom/htc/album/modules/collection/SimpleImage;
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    .line 330
    .restart local v2       #bResult:I
    goto/16 :goto_0
.end method

.method protected onLoadDataBegin()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataBegin()V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 123
    return-void
.end method

.method protected onLoadDataCancelled()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataCancelled()V

    .line 258
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FolderManager;->stopLoadData()V

    .line 259
    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 269
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    .line 271
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 275
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataEnd(Ljava/lang/Integer;)V

    .line 277
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 279
    :cond_1
    return-void
.end method

.method protected onLoadDataInBackground(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 18
    .parameter "params"

    .prologue
    .line 131
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: begin"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v8, 0x0

    .line 136
    .local v8, hasFileCache:Z
    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    and-int/lit8 v14, v14, 0x2

    if-ne v13, v14, :cond_5

    const/4 v12, 0x1

    .line 137
    .local v12, requestReload:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v14, "media_connected"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 139
    .local v2, bIsMediaConnected:Z
    const/4 v13, 0x1

    if-ne v13, v2, :cond_6

    .line 141
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] Load by MediaConnnected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v12, 0x1

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v14, "media_connected"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 144
    const/16 v13, 0x4e46

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    .line 167
    :cond_0
    :goto_1
    if-nez v12, :cond_1

    if-nez v8, :cond_8

    .line 169
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v14, "MimeTypeFilter"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, filter:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    invoke-virtual {v13, v14, v15, v7}, Lcom/htc/album/helper/FolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, bIsCollectionChanged:Z
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-ne v13, v1, :cond_2

    .line 175
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    if-ne v13, v14, :cond_2

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v14, "local"

    const-string v15, "local"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const-string v17, ".flist"

    invoke-static/range {v13 .. v17}, Lcom/htc/album/ObjectWriter/AlbumCacher;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 184
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 186
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: database: "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: isChanged: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : enabled update: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v1           #bIsCollectionChanged:Z
    .end local v7           #filter:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->doCustomize(Ljava/util/ArrayList;)V

    .line 235
    const/4 v10, 0x0

    .line 236
    .local v10, nCount:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    if-eqz v13, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 239
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit8 v13, v13, 0x2

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    .line 241
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataEnd]: remove loading"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v13, 0x4e46

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onRemoveMessage(I)V

    .line 245
    :cond_4
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: end"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object p1

    .line 136
    .end local v2           #bIsMediaConnected:Z
    .end local v10           #nCount:I
    .end local v12           #requestReload:Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 148
    .restart local v2       #bIsMediaConnected:Z
    .restart local v12       #requestReload:Z
    :cond_6
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] reload: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-nez v12, :cond_0

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isCacheExist()Z

    move-result v8

    .line 152
    if-nez v8, :cond_0

    .line 154
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] new load "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v13, 0x4e46

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 169
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 191
    :cond_8
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v3

    .line 192
    .local v3, bIsStorageReady:Z
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: media connected: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-eqz v3, :cond_9

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    const-string v14, "local"

    const-string v15, "local"

    const-string v16, ".flist"

    invoke-static/range {v13 .. v16}, Lcom/htc/album/ObjectWriter/AlbumCacher;->readCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .end local v4           #cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 201
    .restart local v4       #cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_9
    if-nez v4, :cond_a

    .line 202
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .restart local v4       #cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    if-nez v13, :cond_c

    .line 209
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v11, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 213
    .local v5, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getContainedMediaTypes()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    and-int/2addr v13, v14

    if-nez v13, :cond_b

    .line 215
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 221
    .end local v5           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :catch_0
    move-exception v6

    .line 223
    .local v6, ex:Ljava/lang/Exception;
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 229
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 230
    const-string v13, "AdapterLocalFolder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: count: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v13, "AdapterLocalFolder"

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: end"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 218
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_d
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 219
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public setSceneDisplayControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "control"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 49
    return-void
.end method