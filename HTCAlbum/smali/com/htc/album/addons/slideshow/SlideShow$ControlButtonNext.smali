.class Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonNext;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlButtonNext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShow;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonNext;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$ControlButtonNext;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarNext()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$000(Lcom/htc/album/addons/slideshow/SlideShow;)V

    .line 435
    return-void
.end method