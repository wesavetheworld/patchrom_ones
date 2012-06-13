.class Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$SensorThread;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 487
    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/SensorManager;->access$002(I)I

    .line 495
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v13, -0x1

    .line 500
    const/4 v9, 0x3

    new-array v8, v9, [F

    .line 501
    .local v8, values:[F
    new-array v6, v10, [I

    .line 502
    .local v6, status:[I
    new-array v7, v10, [J

    .line 503
    .local v7, timestamp:[J
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 505
    invoke-direct {p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v9

    if-nez v9, :cond_0

    .line 555
    :goto_0
    return-void

    .line 509
    :cond_0
    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v9, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    .line 512
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 513
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 517
    :goto_1
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v9

    invoke-static {v9, v8, v6, v7}, Landroid/hardware/SensorManager;->sensors_data_poll(I[F[I[J)I

    move-result v3

    .line 519
    .local v3, sensor:I
    aget v0, v6, v11

    .line 520
    .local v0, accuracy:I
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 521
    if-eq v3, v13, :cond_1

    :try_start_1
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 524
    :cond_1
    if-ne v3, v13, :cond_2

    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 526
    const-string v9, "SensorManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_sensors_data_poll() failed, we bail out: sensors="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_2
    if-ne v3, v13, :cond_3

    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 531
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()I

    move-result v9

    invoke-static {v9}, Landroid/hardware/SensorManager;->sensors_destroy_queue(I)V

    .line 532
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/hardware/SensorManager;->access$002(I)I

    .line 534
    :cond_3
    iget-object v9, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v11, 0x0

    iput-object v11, v9, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 535
    monitor-exit v10

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 513
    .end local v0           #accuracy:I
    .end local v3           #sensor:I
    :catchall_1
    move-exception v9

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 537
    .restart local v0       #accuracy:I
    .restart local v3       #sensor:I
    :cond_4
    :try_start_3
    sget-object v9, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 538
    .local v4, sensorObject:Landroid/hardware/Sensor;
    if-eqz v4, :cond_6

    .line 541
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 542
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v5, :cond_6

    .line 543
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 544
    .local v2, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 547
    invoke-virtual {v2, v4, v8, v7, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V

    .line 542
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 552
    .end local v1           #i:I
    .end local v2           #listener:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v5           #size:I
    :cond_6
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
