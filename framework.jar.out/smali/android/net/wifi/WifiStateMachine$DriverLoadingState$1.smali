.class Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$DriverLoadingState;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4243
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4246
    const/4 v1, 0x0

    .line 4247
    .local v1, wifiap:I
    const/4 v0, 0x1

    .line 4249
    .local v0, ret:Z
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4251
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_0

    .line 4267
    :goto_0
    if-nez v1, :cond_1

    .line 4268
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z

    move-result v0

    .line 4273
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 4274
    const-string v2, "WifiStateMachine"

    const-string v3, "Driver load successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20003

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4288
    :goto_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4289
    return-void

    .line 4253
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x2

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4255
    const/4 v1, 0x0

    .line 4257
    goto :goto_0

    .line 4259
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0xc

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4261
    const/4 v1, 0x1

    goto :goto_0

    .line 4269
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4270
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadApDriver()Z

    move-result v0

    goto :goto_1

    .line 4277
    :cond_2
    const-string v2, "WifiStateMachine"

    const-string v3, "Failed to load driver!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->val$message:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_1

    .line 4286
    :goto_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x20004

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 4280
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x4

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_3

    .line 4283
    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    iget-object v2, v2, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0xe

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_3

    .line 4251
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 4278
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method
