.class final enum Lcom/scalado/camera/autorama/Autorama$State;
.super Ljava/lang/Enum;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scalado/camera/autorama/Autorama$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

.field private static final synthetic ENUM$VALUES:[Lcom/scalado/camera/autorama/Autorama$State;

.field public static final enum READY:Lcom/scalado/camera/autorama/Autorama$State;

.field public static final enum RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

.field public static final enum TRACKING:Lcom/scalado/camera/autorama/Autorama$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/scalado/camera/autorama/Autorama$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    .line 264
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$State;

    const-string v1, "TRACKING"

    invoke-direct {v0, v1, v3}, Lcom/scalado/camera/autorama/Autorama$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    .line 265
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$State;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v4}, Lcom/scalado/camera/autorama/Autorama$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    .line 266
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$State;

    const-string v1, "RENDERING"

    invoke-direct {v0, v1, v5}, Lcom/scalado/camera/autorama/Autorama$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/autorama/Autorama$State;->RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

    .line 262
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/scalado/camera/autorama/Autorama$State;

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->TRACKING:Lcom/scalado/camera/autorama/Autorama$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scalado/camera/autorama/Autorama$State;->ENUM$VALUES:[Lcom/scalado/camera/autorama/Autorama$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scalado/camera/autorama/Autorama$State;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/scalado/camera/autorama/Autorama$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scalado/camera/autorama/Autorama$State;

    return-object v0
.end method

.method public static values()[Lcom/scalado/camera/autorama/Autorama$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->ENUM$VALUES:[Lcom/scalado/camera/autorama/Autorama$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/scalado/camera/autorama/Autorama$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
