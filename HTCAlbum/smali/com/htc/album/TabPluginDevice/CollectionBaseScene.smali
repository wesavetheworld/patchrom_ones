.class public abstract Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "CollectionBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        ">",
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<TVIEW;",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CollectionBaseScene"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 3
    .parameter "collection"

    .prologue
    .line 40
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    new-instance v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-object v0
.end method

.method protected createCollection()Lcom/htc/album/modules/collection/Collection;
    .locals 8

    .prologue
    .line 47
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "collection_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/album/modules/collection/Collection;

    .line 49
    .local v6, collection:Lcom/htc/album/modules/collection/Collection;
    const/4 v0, 0x0

    .line 50
    .local v0, newCollection:Lcom/htc/album/modules/collection/Collection;
    if-nez v6, :cond_0

    .line 52
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/helper/CollectionMaker;->makeCollectionByIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const/4 v2, 0x1

    const-string v3, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 59
    new-instance v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    .end local v0           #newCollection:Lcom/htc/album/modules/collection/Collection;
    const-string v2, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "key_BurstShot_CoverFilePath"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .restart local v0       #newCollection:Lcom/htc/album/modules/collection/Collection;
    :goto_1
    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/collection/Collection;->setPhotoCount(I)V

    .line 72
    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getImagePhotoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/collection/Collection;->setImagePhotoCount(I)V

    .line 73
    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getVideoPhotoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/collection/Collection;->setVideoPhotoCount(I)V

    .line 74
    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getDrmImagePhotoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/collection/Collection;->setDrmImagePhotoCount(I)V

    .line 75
    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getDrmVideoPhotoCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/collection/Collection;->setDrmVideoPhotoCount(I)V

    .line 76
    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setFilter(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/collection/Collection;->setCoverImage(Lcom/htc/album/modules/collection/SimpleImage;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    goto :goto_1
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 30
    .local p0, this:Lcom/htc/album/TabPluginDevice/CollectionBaseScene;,"Lcom/htc/album/TabPluginDevice/CollectionBaseScene<TVIEW;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->createCollection()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 33
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 35
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 36
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->onLoadData()V

    .line 37
    return-void
.end method