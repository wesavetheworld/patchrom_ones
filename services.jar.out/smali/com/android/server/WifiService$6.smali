.class Lcom/android/server/WifiService$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 852
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.app.admin.intent.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    const-string v2, "android.app.admin.extra.ALLOW_STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 856
    .local v1, allowStatus:I
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GOT INTENT_ALLOW_WIFI_CHANGE: status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    if-nez v1, :cond_1

    .line 858
    iget-object v2, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z
    invoke-static {v2, v5}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;Z)Z

    .line 863
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)V

    .line 865
    .end local v1           #allowStatus:I
    :cond_0
    return-void

    .line 861
    .restart local v1       #allowStatus:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService$6;->this$0:Lcom/android/server/WifiService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z
    invoke-static {v2, v3}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;Z)Z

    goto :goto_0
.end method
