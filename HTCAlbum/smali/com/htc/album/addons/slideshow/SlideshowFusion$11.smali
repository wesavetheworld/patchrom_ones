.class Lcom/htc/album/addons/slideshow/SlideshowFusion$11;
.super Ljava/lang/Object;
.source "SlideshowFusion.java"

# interfaces
.implements Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusion;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusion;)V
    .locals 0
    .parameter

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V
    .locals 4
    .parameter "index"
    .parameter "DI"

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$1100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1595
    iget v0, p2, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v0, :pswitch_data_0

    .line 1613
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mManager:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$1100(Lcom/htc/album/addons/slideshow/SlideshowFusion;)Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneManager;->onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 1615
    :cond_0
    return-void

    .line 1601
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    new-instance v1, Lcom/htc/album/addons/slideshow/SlideshowFusion$11$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/addons/slideshow/SlideshowFusion$11$1;-><init>(Lcom/htc/album/addons/slideshow/SlideshowFusion$11;I)V

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1608
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusion$11;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusion;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusion;->mSlideshowInterval:I
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$900(Lcom/htc/album/addons/slideshow/SlideshowFusion;)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    #calls: Lcom/htc/album/addons/slideshow/SlideshowFusion;->post(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusion;->access$1000(Lcom/htc/album/addons/slideshow/SlideshowFusion;JZ)V

    goto :goto_0

    .line 1595
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method