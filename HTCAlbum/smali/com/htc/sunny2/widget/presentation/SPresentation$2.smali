.class Lcom/htc/sunny2/widget/presentation/SPresentation$2;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;->openingAnimation2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$2;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$2;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersLayout()V

    .line 618
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$2;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 619
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$2;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 620
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$2;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iput-boolean v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 621
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$2;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iput-boolean v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 622
    invoke-static {}, Lcom/htc/sunny2/widget/presentation/SPresentation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "end openingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method