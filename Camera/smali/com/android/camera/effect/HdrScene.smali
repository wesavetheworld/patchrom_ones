.class public final Lcom/android/camera/effect/HdrScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "HdrScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# instance fields
.field private m_HdrUI:Lcom/android/camera/component/HdrUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 19
    const-string v0, "hdr"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 20
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-object v0, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return v1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/HdrScene;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "HDR UI"

    invoke-virtual {v0, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/HdrUI;

    iput-object v0, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    .line 76
    iget-object v0, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "prevEffect"

    .prologue
    .line 28
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 29
    .local v0, bIsSameScene:Z
    :goto_0
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/camera/effect/HdrScene;->linkToComponents()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/component/HdrUI;->enterHdrMode(Z)V

    .line 34
    :goto_1
    return-void

    .line 28
    .end local v0           #bIsSameScene:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    .restart local v0       #bIsSameScene:Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot link to HDR UI"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "nextEffect"

    .prologue
    .line 42
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 43
    .local v0, bIsSameScene:Z
    :goto_0
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/camera/effect/HdrScene;->linkToComponents()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/android/camera/effect/HdrScene;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/component/HdrUI;->exitHdrMode(Z)V

    .line 48
    :goto_1
    return-void

    .line 42
    .end local v0           #bIsSameScene:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    .restart local v0       #bIsSameScene:Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot link to HDR UI"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x51

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method