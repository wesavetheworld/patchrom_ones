.class public abstract Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;
.source "LivePhotoAdapterBase.java"

# interfaces
.implements Lcom/htc/sunny2/IMediaList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_DOWNLOAD_BUFFER_FULL:I = 0x3

.field public static final MAX_DOWNLOAD_BUFFER_GRID_2PANEL_L:I = 0x1c

.field public static final MAX_DOWNLOAD_BUFFER_GRID_2PANEL_P:I = 0x1c

.field public static final MAX_DOWNLOAD_BUFFER_GRID_FULL:I = 0x1c


# instance fields
.field private mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

.field private mBundle:Landroid/os/Bundle;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field protected mFocusItem:I

.field private mIsGenuine:Z

.field private mIsInternal:Z

.field protected mIsLatest:Z

.field protected mLastErrorState:I

.field private mListRecycable:Z

.field protected mPhotoDetailCount:I

.field protected mPhotoDetailIndex:I

.field protected mPhotoDetailIndexNext:I

.field private mTemplateID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 40
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 41
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 43
    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    .line 44
    new-instance v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;-><init>(Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    .line 45
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 46
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    .line 47
    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 48
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBundle:Landroid/os/Bundle;

    .line 49
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    .line 50
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    .line 51
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 52
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    .line 87
    invoke-virtual {p0, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->setUIHandler(Landroid/os/Handler;)V

    .line 88
    return-void
.end method


# virtual methods
.method public decoderStart()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public decoderStop()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public deocderResumePause(Z)V
    .locals 0
    .parameter "bIsResume"

    .prologue
    .line 79
    return-void
.end method

.method public disableListRecycle()V
    .locals 1

    .prologue
    .line 1146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    .line 1147
    return-void
.end method

.method protected doUpdateFocusedItem()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1119
    const/4 v0, 0x0

    .line 1120
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 1121
    .local v2, szMediumId:Ljava/lang/String;
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1122
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #szMediumId:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #szMediumId:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1128
    iput v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1129
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 1131
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 1132
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1135
    :cond_2
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1138
    :cond_3
    sget-object v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LivePhotoAdapterBase][doUpdateFocusedItem]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCachedBitmap(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "nPos"
    .parameter "aPhoto"

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getBitmapCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 435
    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method public getFocusedItem()I
    .locals 1

    .prologue
    .line 1142
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    return v0
.end method

.method public getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    return-object v0
.end method

.method public getIndexRange(I)V
    .locals 5
    .parameter "nIndexTrigger"

    .prologue
    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, nIndexBegin:I
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v0

    .line 580
    .local v0, nCount:I
    const/4 v3, -0x1

    if-ne v3, p1, :cond_4

    .line 581
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    .line 585
    :goto_0
    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 586
    .local v2, nIndexEnd:I
    if-gtz v2, :cond_0

    .line 587
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v3

    add-int v2, v1, v3

    .line 589
    :cond_0
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 591
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iput v1, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 592
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iput v2, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    .line 600
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v3, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    if-gez v3, :cond_2

    .line 601
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    const/4 v4, 0x0

    iput v4, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 603
    :cond_2
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v3, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-gt v0, v3, :cond_3

    .line 604
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iput v0, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    .line 608
    :cond_3
    return-void

    .line 583
    .end local v2           #nIndexEnd:I
    :cond_4
    move v1, p1

    goto :goto_0

    .line 594
    .restart local v2       #nIndexEnd:I
    :cond_5
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 596
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    add-int/lit8 v4, v1, -0x1

    iput v4, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 597
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    add-int/lit8 v4, v1, 0x1

    iput v4, v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    goto :goto_1
.end method

.method public getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .locals 1
    .parameter "pos"

    .prologue
    .line 1074
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v0

    .line 1070
    .local v0, nCount:I
    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    return v0
.end method

.method public getSourceInfo()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1045
    const/4 v0, 0x0

    .line 1047
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v2, 0x0

    .line 1049
    .local v2, wrapperAlbums:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1053
    :cond_0
    const/16 v3, 0x2730

    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 1054
    const/16 v3, 0x4e22

    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    move-object v1, v0

    .line 1063
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_0
    return-object v1

    .line 1059
    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    move-object v1, v0

    .line 1063
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_0
.end method

.method public getSourceName(Z)Ljava/lang/String;
    .locals 4
    .parameter "bEnableCount"

    .prologue
    .line 1022
    const-string v1, ""

    .line 1024
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1026
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1028
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 1029
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getFolderName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    .line 1033
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    :goto_0
    return-object v1

    .line 1036
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUIState()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    return v0
.end method

.method public isGeunine()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    return v0
.end method

.method public mergeMediaItem(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 1079
    return-void
.end method

.method public notifyUpdateDataPlugin()V
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isOpenSenseConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1103
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][notifyUpdateDataPlugin] setDataPlugin "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 1105
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    goto :goto_0

    .line 1109
    :cond_2
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][notifyUpdateDataPlugin] InitConnection "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onCreate()V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onDestroy()V

    .line 142
    return-void
.end method

.method public onErrorAlbumInfo()V
    .locals 3

    .prologue
    .line 843
    const/16 v0, 0x2764

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 844
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 846
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 833
    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 834
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 835
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 836
    const/16 v0, 0x4e96

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 838
    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    .prologue
    const/16 v3, 0x2761

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 851
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 852
    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 853
    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 854
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 855
    const/16 v0, 0x4e96

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 857
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 868
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 903
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 906
    :goto_0
    :sswitch_0
    return-void

    .line 871
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestAlbumInfo()V

    goto :goto_0

    .line 874
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestPhotoList(Landroid/os/Message;)V

    goto :goto_0

    .line 877
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 882
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncConnection()V

    goto :goto_0

    .line 885
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncAlbumInfo()V

    goto :goto_0

    .line 888
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncListComplete()V

    goto :goto_0

    .line 891
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 894
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorConnection()V

    goto :goto_0

    .line 897
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorAlbumInfo()V

    goto :goto_0

    .line 900
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorNoList()V

    goto :goto_0

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_8
        0x2761 -> :sswitch_a
        0x2764 -> :sswitch_9
        0x4e22 -> :sswitch_1
        0x4e25 -> :sswitch_2
        0x4e28 -> :sswitch_3
        0x4e3d -> :sswitch_0
        0x4e84 -> :sswitch_4
        0x4e87 -> :sswitch_5
        0x4e88 -> :sswitch_6
        0x4e89 -> :sswitch_7
    .end sparse-switch
.end method

.method public onNotifyDataSetChange()V
    .locals 0

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->notifyDataSetChanged()V

    .line 865
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onPause()V

    .line 137
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->releaseMemoryCache()V

    .line 148
    :cond_0
    return-void
.end method

.method public onRequestAlbumInfo()V
    .locals 4

    .prologue
    .line 322
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v2, v3, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 330
    .local v1, szIds:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    array-length v2, v1

    if-le v2, v0, :cond_2

    .line 332
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumOp([Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onRequestDataUpdate(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x4e25

    const/16 v4, 0x2724

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 276
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 313
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 314
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 283
    :sswitch_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 302
    :sswitch_1
    const/16 v0, 0x4e22

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 303
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 308
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 309
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2761 -> :sswitch_2
        0x2764 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nPos"
    .parameter "aPhoto"

    .prologue
    .line 414
    const/4 v6, 0x0

    .line 415
    .local v6, bIsCacheExit:Z
    const/4 v7, 0x0

    .line 417
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    move-object v8, v7

    .line 426
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 420
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    move-object v8, v7

    .line 421
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 424
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap2(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncDownloadStatus(I)V

    move-object v8, v7

    .line 426
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public onRequestPhotoIntegrity(I)I
    .locals 5
    .parameter "nPos"

    .prologue
    .line 397
    const/4 v1, -0x1

    .line 398
    .local v1, nIntegrity:I
    const/16 v3, 0x4eee

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 410
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 401
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v3, :cond_1

    move v2, v1

    .line 402
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .line 404
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_1
    const/4 v0, 0x0

    .line 405
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_2

    move v2, v1

    .line 406
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .line 408
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageIntegrity(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)I

    move-result v1

    move v2, v1

    .line 410
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0
.end method

.method public onRequestPhotoList(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onRequestPhotoList]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v2, v3, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, nMediumType:I
    const/4 v1, 0x0

    .line 359
    .local v1, szMediumId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #szMediumId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 361
    .restart local v1       #szMediumId:Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_3

    .line 362
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotoList(Ljava/lang/String;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 364
    :cond_3
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotoList(Ljava/lang/String;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 366
    .end local v0           #nMediumType:I
    .end local v1           #szMediumId:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 368
    const/4 v0, 0x0

    .line 369
    .restart local v0       #nMediumType:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_5

    .line 371
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotosOfMeList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 375
    :cond_5
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotosOfMeList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 381
    .end local v0           #nMediumType:I
    :cond_6
    const/4 v0, 0x0

    .line 382
    .restart local v0       #nMediumType:I
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 383
    const/4 v0, 0x1

    .line 385
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_8

    .line 387
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getRecentPhotoList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 391
    :cond_8
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getRecentPhotoList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 119
    const/16 v0, 0x4eec

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->triggerListRefresh()V

    .line 122
    :cond_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onResume()V

    .line 123
    return-void
.end method

.method public onSyncAlbumInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 458
    const/16 v0, 0x2731

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 459
    const/16 v0, 0x4e87

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 460
    return-void
.end method

.method public onSyncConnection()V
    .locals 4

    .prologue
    const/16 v2, 0x4e25

    const/4 v3, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 445
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "from_outside"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 446
    const-string v1, "from_outside"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 447
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 449
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_0

    .line 451
    const-string v1, "index_id"

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    const/16 v1, 0x4e35

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 454
    :cond_0
    return-void
.end method

.method public onSyncDownloadStatus(I)V
    .locals 2
    .parameter "nTimeOut"

    .prologue
    .line 439
    const/16 v0, 0x4e96

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 440
    return-void
.end method

.method public onSyncListComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x4f4d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    sget-object v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][onSyncListComplete]: Begin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/16 v1, 0x4eec

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-gt v1, v2, :cond_0

    .line 497
    :goto_0
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x0

    .line 469
    .local v0, isListSizeChanged:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedPhotoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->syncListItem(Ljava/lang/Object;)Z

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setAdapterList(Ljava/util/List;)V

    .line 472
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->doUpdateFocusedItem()V

    .line 474
    const/16 v1, 0x4e88

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 475
    const/16 v1, 0x2728

    invoke-virtual {p0, v1, v7, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 477
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    if-nez v1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    :cond_1
    const/16 v1, 0x4e25

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 481
    :cond_2
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 484
    :cond_3
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v6, v1, :cond_4

    .line 486
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 487
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 493
    :cond_4
    const/16 v1, 0x4e47

    const/16 v2, 0xbb8

    invoke-virtual {p0, v1, v7, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 496
    sget-object v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][onSyncListComplete]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 501
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v4, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 505
    .local v1, bundleNotify:Landroid/os/Bundle;
    const-string v4, "index_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 506
    .local v3, nIndex:I
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 508
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    .line 511
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    .line 512
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 517
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v4, :cond_5

    .line 519
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 521
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    if-nez v4, :cond_2

    const/16 v4, 0x4e45

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 523
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 524
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 534
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_0

    .line 526
    :cond_4
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    goto :goto_1

    .line 528
    :cond_5
    const/4 v4, 0x1

    iget v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v4, v5, :cond_3

    .line 530
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onTriggerDownloadRequest(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 822
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v1, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 826
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    .line 827
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onVerifyFullstripItemStatus(I)V
    .locals 10
    .parameter "nIndexItem"

    .prologue
    const/4 v9, 0x1

    .line 727
    const/4 v8, -0x1

    .line 728
    .local v8, nIntegrity:I
    const/4 v2, 0x0

    .line 729
    .local v2, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v6, 0x0

    .line 730
    .local v6, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v7

    .line 734
    .local v7, nCount:I
    move v1, p1

    .line 736
    .local v1, nIndex:I
    const/4 v0, -0x1

    if-ne v0, v1, :cond_7

    .line 738
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v1, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v0, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-lt v0, v1, :cond_0

    .line 741
    if-gt v7, v1, :cond_1

    .line 819
    :cond_0
    :goto_1
    return-void

    .line 747
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_3

    .line 738
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v5, v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;II)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 752
    if-eqz v6, :cond_2

    .line 756
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_5

    .line 759
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 760
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 764
    :goto_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_2

    .line 762
    :cond_4
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    goto :goto_3

    .line 766
    :cond_5
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v9, v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 770
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    .line 774
    :goto_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_2

    .line 772
    :cond_6
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_4

    .line 782
    :cond_7
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 785
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequestSingle(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 787
    if-eqz v6, :cond_0

    .line 789
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v0, v9, :cond_0

    .line 791
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_9

    .line 794
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 795
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 799
    :goto_5
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto/16 :goto_1

    .line 797
    :cond_8
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    goto :goto_5

    .line 801
    :cond_9
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v9, v0, :cond_b

    .line 804
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 805
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    .line 809
    :goto_6
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto/16 :goto_1

    .line 807
    :cond_a
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_6

    .line 813
    :cond_b
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onVerifyFullstripItemStatus]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onVerifyGridItemStatus(I)V
    .locals 9
    .parameter "nIndexItem"

    .prologue
    const/4 v8, 0x1

    .line 627
    const/4 v7, -0x1

    .line 628
    .local v7, nIntegrity:I
    const/4 v2, 0x0

    .line 629
    .local v2, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v6, 0x0

    .line 633
    .local v6, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    move v1, p1

    .line 638
    .local v1, nIndex:I
    const/4 v0, -0x1

    if-ne v0, v1, :cond_5

    .line 640
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v1, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v0, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-lt v0, v1, :cond_6

    .line 643
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_1

    .line 640
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v5, v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;II)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 647
    if-eqz v6, :cond_0

    .line 649
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 654
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 661
    :goto_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_1

    .line 659
    :cond_2
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    goto :goto_2

    .line 663
    :cond_3
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v8, v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 669
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    .line 676
    :goto_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_1

    .line 674
    :cond_4
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_3

    .line 688
    :cond_5
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_7

    .line 724
    :cond_6
    :goto_4
    return-void

    .line 691
    :cond_7
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequestSingle(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 692
    if-eqz v6, :cond_6

    .line 694
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v0, v8, :cond_6

    .line 696
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_9

    .line 699
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrlThumbnail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 700
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    .line 704
    :goto_5
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_4

    .line 702
    :cond_8
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoThumbnailFilePath(Landroid/net/Uri;)V

    goto :goto_5

    .line 706
    :cond_9
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v8, v0, :cond_6

    .line 709
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 710
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    .line 714
    :goto_6
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_4

    .line 712
    :cond_a
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoFilePath(Landroid/net/Uri;)V

    goto :goto_6
.end method

.method public onVerifyImageStatus(I)V
    .locals 2
    .parameter "nIndexTrigger"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getIndexRange(I)V

    .line 616
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 618
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyGridItemStatus(I)V

    goto :goto_0

    .line 620
    :cond_2
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 622
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyFullstripItemStatus(I)V

    goto :goto_0
.end method

.method public setCenteredVisibleRange(IZ)V
    .locals 3
    .parameter "nPosCenter"
    .parameter "bIsRefresh"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    add-int/lit8 v1, p1, -0xf

    add-int/lit8 v2, p1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 1015
    :cond_0
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z
    .locals 4
    .parameter "dataPlugin"

    .prologue
    .line 1082
    const/4 v0, 0x0

    .line 1083
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eq v2, p1, :cond_0

    .line 1085
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][setDataPlugin]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1087
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "from_outside"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1088
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->setDataRequest(Ljava/lang/Object;)V

    .line 1090
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 1091
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 1092
    const/4 v0, 0x1

    .line 1094
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    return v0
.end method

.method public setGenuine(Z)V
    .locals 0
    .parameter "bIsGenuine"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    .line 96
    return-void
.end method

.method public setInternal(Z)V
    .locals 3
    .parameter "bIsInternal"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    .line 56
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][setInternal]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setPhotoPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1018
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    .line 1019
    return-void
.end method

.method public setScrollState(III)V
    .locals 2
    .parameter "nScrollState"
    .parameter "nFirstIndex"
    .parameter "nLastIndex"

    .prologue
    const/16 v1, 0x4f4d

    .line 543
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 546
    :cond_0
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    if-ne v0, p2, :cond_1

    .line 548
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][setScrollState]: skip 1"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_1
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    .line 553
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mFirstVisibleIndex:I

    .line 554
    iput p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mLastVisibleIndex:I

    .line 559
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    if-ne v1, v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 563
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    goto :goto_0

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4e

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 568
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    goto :goto_0
.end method

.method public setTemplateID(I)V
    .locals 0
    .parameter "nTemplateID"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    .line 92
    return-void
.end method

.method public setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 3
    .parameter "nLayout"
    .parameter "decoderListener"
    .parameter "downloadListener"

    .prologue
    .line 229
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][setTemplateLayout]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIScrollState:I

    .line 237
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->changeLayoutType(I)V

    .line 238
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDecoder(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;)V

    .line 239
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 240
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->updateMaxDownloadBuffer()V

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 1009
    :cond_0
    return-void
.end method

.method public syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 11
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    const/4 v0, 0x0

    .line 155
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 157
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "service_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    const-string v7, "service_name"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 160
    :cond_0
    const-string v6, "user_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 161
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v7, "user_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    const-string v6, "album_name"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 164
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    const-string v7, "album_name"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    .line 166
    :cond_2
    const-string v6, "album_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 167
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    const-string v7, "album_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_3
    const-string v6, "photo_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 170
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    const-string v7, "photo_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_4
    sget-object v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: album: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v7, v7, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 178
    .local v3, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    move v2, v4

    .line 180
    .local v2, needToCheckAccount:Z
    :goto_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v7, v7, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getDataHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getUIHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v6

    if-ne v4, v6, :cond_5

    .line 182
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v6

    if-nez v6, :cond_8

    .line 184
    sget-object v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: no account..."

    invoke-static {v4, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/16 v4, 0x274f

    invoke-virtual {p0, v4, v10, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 225
    :cond_5
    :goto_1
    return-void

    .end local v2           #needToCheckAccount:Z
    :cond_6
    move v2, v5

    .line 178
    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_0

    .line 189
    .restart local v2       #needToCheckAccount:Z
    :cond_8
    if-eqz v2, :cond_a

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v6

    if-ne v4, v6, :cond_a

    .line 191
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v4

    if-nez v4, :cond_9

    .line 193
    sget-object v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: no change just skip!!"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_9
    const/16 v4, 0x2750

    invoke-virtual {p0, v4, v10, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    .line 202
    :cond_a
    sget-object v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: InitConnection.."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz v2, :cond_b

    .line 204
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 207
    :goto_2
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v6, :cond_c

    .line 209
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_1

    .line 206
    :cond_b
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveDummyAccount()V

    goto :goto_2

    .line 213
    :cond_c
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 219
    const/16 v4, 0x2724

    invoke-virtual {p0, v4, v10, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public syncListItem(Ljava/lang/Object;)Z
    .locals 14
    .parameter "objList"

    .prologue
    .line 914
    const/4 v8, 0x0

    .local v8, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    move-object v8, p1

    .line 915
    check-cast v8, Ljava/util/List;

    .line 917
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 919
    :cond_0
    const/4 v11, 0x0

    .line 1002
    :goto_0
    return v11

    .line 925
    :cond_1
    const/4 v9, 0x0

    .line 926
    .local v9, refList:Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 928
    .local v10, tempList:Ljava/util/List;
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v1, 0x0

    .line 932
    .local v1, aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v3, 0x0

    .line 933
    .local v3, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 934
    .local v5, nCountPhoto:I
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: recycle: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-boolean v11, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    if-nez v11, :cond_2

    .line 938
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v11, :cond_2

    .line 940
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 941
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->releaseMemoryCache()V

    .line 944
    :cond_2
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    if-le v5, v4, :cond_6

    .line 946
    const/4 v1, 0x0

    .line 949
    :try_start_0
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    .restart local v1       #aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_2
    if-nez v1, :cond_3

    .line 944
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 951
    .end local v1           #aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :catch_0
    move-exception v2

    .line 953
    .local v2, e:Ljava/lang/Exception;
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v1, 0x0

    .restart local v1       #aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    goto :goto_2

    .line 959
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    .line 960
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getFolderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFolderName(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setIndex(I)V

    .line 962
    iget v11, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTemplateID(I)V

    .line 963
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getPhotoURLHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoURLHeader(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getPhotoURLThumbHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoURLThumbHeader(Ljava/lang/String;)V

    .line 966
    iget-boolean v11, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mListRecycable:Z

    if-eqz v11, :cond_5

    .line 968
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v11, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v3

    .line 970
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 972
    iget-object v11, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v11, :cond_4

    .line 974
    iget-object v11, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v12, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v11, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 977
    :cond_4
    iget-object v11, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v11, :cond_5

    .line 979
    iget-object v11, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v12, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v11, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 985
    :cond_5
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 988
    :cond_6
    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 989
    .local v7, oldSize:I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 992
    .local v6, newSize:I
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 995
    iput-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mList:Ljava/util/List;

    .line 996
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: new list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    sget-object v11, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: clear old: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 1002
    if-eq v7, v6, :cond_7

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public triggerListRefresh()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][triggerListRefresh]: re triggering..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->updateMaxDownloadBuffer()V

    .line 128
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4d

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 130
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 131
    return-void
.end method

.method public updateMaxDownloadBuffer()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    .line 251
    const/16 v1, 0x4eee

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    .line 257
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    if-nez v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 264
    .local v0, nOrientation:I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 265
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method