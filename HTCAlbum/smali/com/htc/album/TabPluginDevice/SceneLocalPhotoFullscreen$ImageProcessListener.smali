.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onProcessCancel()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onProcessEnd(I)V
    .locals 7
    .parameter "nMode"

    .prologue
    .line 215
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 217
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    const/4 v4, 0x0

    .line 220
    .local v4, handler:Landroid/app/Activity;
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, bNeedSetSelect:Z
    const/4 v5, 0x7

    if-eq p1, v5, :cond_0

    const/4 v5, 0x6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x8

    if-ne p1, v5, :cond_1

    .line 235
    :cond_0
    const/4 v1, 0x1

    .line 238
    :cond_1
    move v2, v1

    .line 239
    .local v2, bSetSelection:Z
    new-instance v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ImageProcessListener;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    .end local v1           #bNeedSetSelect:Z
    .end local v2           #bSetSelection:Z
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v3

    .line 224
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "SceneLocalPhotoFullscreen"

    const-string v6, "[onDeleteEnd] Can not get Handler!!"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x0

    .line 226
    goto :goto_0
.end method

.method public onProcessStart()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method