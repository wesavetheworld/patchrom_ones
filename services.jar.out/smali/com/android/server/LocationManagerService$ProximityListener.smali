.class Lcom/android/server/LocationManagerService$ProximityListener;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximityListener"
.end annotation


# instance fields
.field isGpsAvailable:Z

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 1962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 28
    .parameter "loc"

    .prologue
    .line 1968
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gps"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1969
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1971
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    const-string v9, "network"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2063
    :cond_1
    return-void

    .line 1976
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1977
    .local v26, now:J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1978
    .local v2, latitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1979
    .local v4, longitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 1980
    .local v6, accuracy:F
    const/16 v25, 0x0

    .line 1982
    .local v25, intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1983
    .local v1, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v7

    .line 1984
    .local v7, intent:Landroid/app/PendingIntent;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$ProximityAlert;->getExpiration()J

    move-result-wide v20

    .line 1986
    .local v20, expiration:J
    const-wide/16 v8, -0x1

    cmp-long v8, v20, v8

    if-eqz v8, :cond_4

    cmp-long v8, v26, v20

    if-gtz v8, :cond_8

    .line 1987
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 1988
    .local v19, entered:Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/LocationManagerService$ProximityAlert;->isInProximity(DDF)Z

    move-result v24

    .line 1990
    .local v24, inProximity:Z
    if-nez v19, :cond_6

    if-eqz v24, :cond_6

    .line 1994
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1995
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1996
    .local v10, enteredIntent:Landroid/content/Intent;
    const-string v8, "entering"

    const/4 v9, 0x1

    invoke-virtual {v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1998
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v12

    const-string v13, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v11, p0

    invoke-virtual/range {v7 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 2006
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2007
    :catch_0
    move-exception v18

    .line 2011
    .local v18, e:Landroid/app/PendingIntent$CanceledException;
    if-nez v25, :cond_5

    .line 2012
    new-instance v25, Ljava/util/ArrayList;

    .end local v25           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2014
    .restart local v25       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2016
    .end local v10           #enteredIntent:Landroid/content/Intent;
    .end local v18           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_6
    if-eqz v19, :cond_3

    if-nez v24, :cond_3

    .line 2020
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2021
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 2022
    .local v14, exitedIntent:Landroid/content/Intent;
    const-string v8, "entering"

    const/4 v9, 0x0

    invoke-virtual {v14, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2024
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2027
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v16

    const-string v17, "android.permission.ACCESS_FINE_LOCATION"

    move-object v11, v7

    move-object/from16 v15, p0

    invoke-virtual/range {v11 .. v17}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 2032
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v8
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2033
    :catch_1
    move-exception v18

    .line 2037
    .restart local v18       #e:Landroid/app/PendingIntent$CanceledException;
    if-nez v25, :cond_7

    .line 2038
    new-instance v25, Ljava/util/ArrayList;

    .end local v25           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2040
    .restart local v25       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_7
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2048
    .end local v14           #exitedIntent:Landroid/content/Intent;
    .end local v18           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v19           #entered:Z
    .end local v24           #inProximity:Z
    :cond_8
    if-nez v25, :cond_9

    .line 2049
    new-instance v25, Ljava/util/ArrayList;

    .end local v25           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2051
    .restart local v25       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2056
    .end local v1           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    .end local v7           #intent:Landroid/app/PendingIntent;
    .end local v20           #expiration:J
    :cond_a
    if-eqz v25, :cond_1

    .line 2057
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 2058
    .local v22, i:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2059
    .restart local v1       #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2060
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v22

    #calls: Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    invoke-static {v8, v0}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 2067
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 2070
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 2075
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 2089
    monitor-enter p0

    .line 2090
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)V

    .line 2091
    monitor-exit p0

    .line 2092
    return-void

    .line 2091
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 2079
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 2081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 2083
    :cond_0
    return-void
.end method
