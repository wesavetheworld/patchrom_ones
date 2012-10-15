.class public Lcom/android/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraController$SupportedList;,
        Lcom/android/camera/CameraController$Settings;,
        Lcom/android/camera/CameraController$SettingInfo;
    }
.end annotation


# static fields
.field private static final INIT_BRIGHTNESS:I = 0x0

.field private static final INIT_CONTRAST:I = 0x5

.field private static final INIT_SATURATION:I = 0x5

.field private static final INIT_SHARPNESS:I = 0xf

.field public static final KEY_GPU_EFFECT:Ljava/lang/String; = "GPU-effect"

.field public static final KEY_GPU_EFFECT_PARAM_0:Ljava/lang/String; = "GE-param0"

.field public static final KEY_GPU_EFFECT_PARAM_1:Ljava/lang/String; = "GE-param1"

.field public static final KEY_GPU_EFFECT_PARAM_2:Ljava/lang/String; = "GE-param2"

.field public static final KEY_GPU_EFFECT_PARAM_3:Ljava/lang/String; = "GE-param3"

.field private static final TAG:Ljava/lang/String; = "CameraController"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mInjectParam0:I

.field private mInjectParam1:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    .line 42
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 49
    iput-object p1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    .line 50
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 51
    return-void
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 826
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportFlashLight()Z
    .locals 1

    .prologue
    .line 811
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 812
    const/4 v0, 0x1

    .line 814
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportScene()Z
    .locals 1

    .prologue
    .line 819
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 820
    const/4 v0, 0x1

    .line 822
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doSetCameraParameters()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setParameters exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPictureSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;
    .locals 10
    .parameter "setting"

    .prologue
    .line 518
    new-instance v2, Lcom/android/camera/CameraController$SettingInfo;

    invoke-direct {v2}, Lcom/android/camera/CameraController$SettingInfo;-><init>()V

    .line 520
    .local v2, info:Lcom/android/camera/CameraController$SettingInfo;
    const-string v7, "exposure-compensation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 522
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 523
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 524
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 525
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 526
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-object v2

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "CameraController"

    const-string v8, "exposure-compensation: set value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 531
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v7, "saturation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 533
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 534
    .local v5, min:I
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 535
    .local v4, max:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saturation-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",saturation-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 537
    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 544
    .end local v4           #max:I
    .end local v5           #min:I
    :goto_1
    const/high16 v7, 0x40a0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 546
    :try_start_2
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 547
    .local v6, val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saturation-def:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 555
    .end local v6           #val:I
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "saturation"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 556
    .restart local v6       #val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current saturation:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 558
    .end local v6           #val:I
    :catch_1
    move-exception v1

    .line 559
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 560
    const-string v7, "CameraController"

    const-string v8, "saturation: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 538
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 539
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 540
    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 541
    const-string v7, "CameraController"

    const-string v8, "saturation: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 549
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 550
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 551
    const-string v7, "CameraController"

    const-string v8, "saturation: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 563
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v7, "contrast"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 565
    :try_start_4
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 566
    .restart local v5       #min:I
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 567
    .restart local v4       #max:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contrast-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",contrast-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 569
    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 576
    .end local v4           #max:I
    .end local v5           #min:I
    :goto_3
    const/high16 v7, 0x40a0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 578
    :try_start_5
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, defVal:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 580
    .local v3, intVal:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contrast-def int: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 588
    .end local v0           #defVal:Ljava/lang/String;
    .end local v3           #intVal:I
    :goto_4
    :try_start_6
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "contrast"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 589
    .restart local v6       #val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current contrast:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 591
    .end local v6           #val:I
    :catch_4
    move-exception v1

    .line 592
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 593
    const-string v7, "CameraController"

    const-string v8, "contrast: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 570
    .end local v1           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 571
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 572
    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 573
    const-string v7, "CameraController"

    const-string v8, "contrast: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 582
    .end local v1           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 583
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 584
    const-string v7, "CameraController"

    const-string v8, "contrast: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 596
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v7, "sharpness"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 598
    :try_start_7
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-min"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 599
    .restart local v5       #min:I
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-max"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 600
    .restart local v4       #max:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sharpness-min:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",sharpness-max:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v2, v5}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 602
    invoke-virtual {v2, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 609
    .end local v4           #max:I
    .end local v5           #min:I
    :goto_5
    const/high16 v7, 0x40a0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 611
    :try_start_8
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness-def"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 612
    .restart local v6       #val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sharpness-def:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 620
    .end local v6           #val:I
    :goto_6
    :try_start_9
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "sharpness"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 621
    .restart local v6       #val:I
    const-string v7, "CameraController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current sharpness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v2, v6}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 623
    .end local v6           #val:I
    :catch_7
    move-exception v1

    .line 624
    .restart local v1       #e:Ljava/lang/Exception;
    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 625
    const-string v7, "CameraController"

    const-string v8, "sharpness: set current value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 603
    .end local v1           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 604
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 605
    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 606
    const-string v7, "CameraController"

    const-string v8, "sharpness: set min, max value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 614
    .end local v1           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .line 615
    .restart local v1       #e:Ljava/lang/Exception;
    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 616
    const-string v7, "CameraController"

    const-string v8, "sharpness: set default value failed !!"

    invoke-static {v7, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 628
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v7, "taking-picture-zoom"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 630
    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 631
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 637
    :goto_7
    const/high16 v7, 0x3f80

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 638
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 640
    :try_start_b
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "taking-picture-zoom"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 641
    :catch_a
    move-exception v1

    .line 642
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    goto/16 :goto_0

    .line 632
    .end local v1           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v1

    .line 633
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 634
    const/16 v7, 0x1e

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    goto :goto_7

    .line 645
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public injectGEParam()Z
    .locals 3

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "CameraController"

    const-string v2, "injectGEParam"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    const/4 v1, 0x1

    .line 382
    :goto_1
    return v1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setParameters exception"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 382
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public mapBarLevel2SettingValue(Ljava/lang/String;II)I
    .locals 16
    .parameter "key"
    .parameter "level"
    .parameter "level_num"

    .prologue
    .line 430
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v9

    .line 432
    .local v9, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v8

    .line 433
    .local v8, def:I
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v15

    .line 434
    .local v15, min:I
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v14

    .line 436
    .local v14, max:I
    const/4 v13, 0x0

    .line 437
    .local v13, level_min:I
    add-int/lit8 v12, p3, -0x1

    .line 438
    .local v12, level_max:I
    add-int v0, v13, v12

    div-int/lit8 v11, v0, 0x2

    .line 439
    .local v11, level_def:I
    move/from16 v10, p2

    .line 441
    .local v10, level_current:I
    if-le v10, v12, :cond_1

    .line 442
    move v10, v12

    .line 446
    :cond_0
    :goto_0
    int-to-float v0, v13

    int-to-float v1, v15

    int-to-float v2, v11

    int-to-float v3, v8

    int-to-float v4, v12

    int-to-float v5, v14

    int-to-float v6, v10

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->calcLagrange(FFFFFFF)F

    move-result v7

    .line 447
    .local v7, current:F
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 443
    .end local v7           #current:F
    :cond_1
    if-ge v10, v13, :cond_0

    .line 444
    move v10, v13

    goto :goto_0
.end method

.method public mapSettingValue2BarLevel(Ljava/lang/String;II)I
    .locals 16
    .parameter "key"
    .parameter "value"
    .parameter "level_num"

    .prologue
    .line 408
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v10

    .line 410
    .local v10, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v10}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v9

    .line 411
    .local v9, def:I
    invoke-virtual {v10}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v15

    .line 412
    .local v15, min:I
    invoke-virtual {v10}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v14

    .line 413
    .local v14, max:I
    move/from16 v8, p2

    .line 415
    .local v8, current:I
    if-le v8, v14, :cond_1

    .line 416
    move v8, v14

    .line 420
    :cond_0
    :goto_0
    const/4 v13, 0x0

    .line 421
    .local v13, level_min:I
    add-int/lit8 v12, p3, -0x1

    .line 422
    .local v12, level_max:I
    add-int v0, v13, v12

    div-int/lit8 v11, v0, 0x2

    .line 424
    .local v11, level_def:I
    int-to-float v0, v15

    int-to-float v1, v13

    int-to-float v2, v9

    int-to-float v3, v11

    int-to-float v4, v14

    int-to-float v5, v12

    int-to-float v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->calcLagrange(FFFFFFF)F

    move-result v7

    .line 425
    .local v7, bar_current:F
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 417
    .end local v7           #bar_current:F
    .end local v11           #level_def:I
    .end local v12           #level_max:I
    .end local v13           #level_min:I
    :cond_1
    if-ge v8, v15, :cond_0

    .line 418
    move v8, v15

    goto :goto_0
.end method

.method public removeCameraParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 389
    :cond_0
    if-eqz p1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 391
    :cond_1
    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 248
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    if-nez v0, :cond_1

    .line 249
    const-string v0, "CameraController"

    const-string v1, "not support Antibanding !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    :cond_2
    const-string p1, "auto"

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public final setAutoExposureLock(Z)Z
    .locals 3
    .parameter "isLocked"

    .prologue
    .line 258
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoExposureLock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAutoWhiteBalanceLock(Z)Z
    .locals 3
    .parameter "isLocked"

    .prologue
    .line 272
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoWhiteBalanceLock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCameraParameter(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 311
    :cond_0
    if-eqz p1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 313
    :cond_1
    return-void
.end method

.method public setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 303
    :cond_0
    if-eqz p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 234
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    if-nez v0, :cond_1

    .line 235
    const-string v0, "CameraController"

    const-string v1, "not support Effects !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    :cond_2
    const-string p1, "none"

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 290
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 206
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-nez v0, :cond_1

    .line 207
    const-string v0, "CameraController"

    const-string v1, "not support FlashMode !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    :cond_2
    const-string p1, "auto"

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public final setFocusAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, areas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 106
    :cond_0
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setGEParam(Ljava/lang/String;IIIIZ)Z
    .locals 5
    .parameter "param"
    .parameter "n0"
    .parameter "n1"
    .parameter "n2"
    .parameter "n3"
    .parameter "bEnable"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 343
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 347
    :cond_0
    const-string v2, "GE-param0"

    if-eq p1, v2, :cond_1

    const-string v2, "GE-param1"

    if-eq p1, v2, :cond_1

    .line 367
    :goto_0
    return v0

    .line 350
    :cond_1
    const-string v2, "GE-param0"

    if-ne p1, v2, :cond_4

    .line 352
    if-ne p6, v1, :cond_3

    iput v1, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    .line 364
    :cond_2
    :goto_1
    const-string v0, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGEParam ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "GE-param3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 367
    goto/16 :goto_0

    .line 353
    :cond_3
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    goto/16 :goto_1

    .line 355
    :cond_4
    const-string v2, "GE-param1"

    if-ne p1, v2, :cond_2

    .line 357
    if-ne p6, v1, :cond_5

    iput v1, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1

    .line 358
    :cond_5
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1
.end method

.method public setGpuEffectType(Ljava/lang/String;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "GPU-effect"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 130
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 11
    .parameter "loc"

    .prologue
    const-wide/16 v9, 0x0

    .line 142
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v7, :cond_0

    .line 143
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 147
    :cond_0
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 154
    if-eqz p1, :cond_6

    .line 155
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 156
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 157
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_1

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 159
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_5

    .line 160
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 161
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 162
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 164
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 171
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 174
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 175
    .local v5, utcTimeSeconds:J
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 177
    .end local v5           #utcTimeSeconds:J
    :cond_2
    const-string v7, "CameraController"

    const-string v8, "add gps location on photo"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    :goto_2
    return-void

    .line 157
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    .restart local v0       #hasLatLon:Z
    :cond_4
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 179
    :cond_5
    const-string v7, "CameraController"

    const-string v8, "not add gps location on photo - hasLatLon = false"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 182
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    :cond_6
    const-string v7, "CameraController"

    const-string v8, "not add gps location on photo - loc = null"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, areas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public setPictureSizeParameter(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 115
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 80
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setPreviewFpsRange exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreviewFrameRateParameter(I)V
    .locals 1
    .parameter "fps"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 122
    return-void
.end method

.method public setPreviewSizeParameter(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 73
    return-void
.end method

.method public final setRecordingHint(Z)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 297
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 138
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 220
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-nez v0, :cond_1

    .line 221
    const-string v0, "CameraController"

    const-string v1, "not support SceneMode !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 224
    :cond_2
    const-string p1, "auto"

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setSupportedList()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 788
    const-string v0, "CameraController"

    const-string v1, "setSupportedList() - mCameraParameters = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    .line 790
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-nez v0, :cond_1

    .line 791
    const-string v0, "CameraController"

    const-string v1, "SupportedList.FlashMode == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    .line 793
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    if-nez v0, :cond_2

    .line 794
    const-string v0, "CameraController"

    const-string v1, "SupportedList.FocusModes == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    .line 796
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    if-nez v0, :cond_3

    .line 797
    const-string v0, "CameraController"

    const-string v1, "SupportedList.WhiteBalance == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    .line 799
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    if-nez v0, :cond_4

    .line 800
    const-string v0, "CameraController"

    const-string v1, "SupportedList.Effects == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    .line 802
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    if-nez v0, :cond_5

    .line 803
    const-string v0, "CameraController"

    const-string v1, "SupportedList.Antibanding == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    .line 806
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-nez v0, :cond_6

    .line 807
    const-string v0, "CameraController"

    const-string v1, "SupportedList.SceneMode == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_6
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraController;->supportVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-stabilization"

    if-eqz p1, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "CameraController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoStabilization ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_1
    return-void

    .line 322
    :cond_2
    const-string v0, "false"

    goto :goto_0

    .line 324
    :cond_3
    const-string v0, "false"

    goto :goto_1
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 192
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    if-nez v0, :cond_1

    .line 193
    const-string v0, "CameraController"

    const-string v1, "not support WhiteBalance !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    :cond_2
    const-string p1, "auto"

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public final setZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 333
    return-void
.end method

.method public showParameters()V
    .locals 3

    .prologue
    .line 402
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public supportVideoStabilization()Z
    .locals 3

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-stabilization-supported"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, vstabSupported:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    const/4 v1, 0x1

    .line 781
    :goto_0
    return v1

    .line 780
    :cond_1
    const-string v1, "CameraController"

    const-string v2, "Video Stabilization is not supported."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateCameraParameters()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 66
    return-void
.end method