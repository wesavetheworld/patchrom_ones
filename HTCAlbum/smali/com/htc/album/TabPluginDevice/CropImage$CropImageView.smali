.class public Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
.super Lcom/htc/opensense2/widget/ImageViewTouchBase;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropImageView"
.end annotation


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 252
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/htc/album/TabPluginDevice/HighlightView;)V
    .locals 14
    .parameter "hv"

    .prologue
    .line 424
    iget-object v2, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 426
    .local v2, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v7, v11

    .line 427
    .local v7, width:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v4, v11

    .line 429
    .local v4, height:F
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getWidth()I

    move-result v11

    int-to-float v6, v11

    .line 430
    .local v6, thisWidth:F
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getHeight()I

    move-result v11

    int-to-float v5, v11

    .line 432
    .local v5, thisHeight:F
    div-float v11, v6, v7

    const v12, 0x3f19999a

    mul-float v8, v11, v12

    .line 433
    .local v8, z1:F
    div-float v11, v5, v4

    const v12, 0x3f19999a

    mul-float v9, v11, v12

    .line 435
    .local v9, z2:F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 436
    .local v10, zoom:F
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    .line 437
    const/high16 v11, 0x3f80

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 441
    const v3, 0x3dcccccd

    .line 442
    .local v3, fDeltaScale:F
    const/4 v0, 0x0

    .line 444
    .local v0, bZoom:Z
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v11, :cond_0

    .line 445
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-boolean v0, v11, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    sub-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v11, v10

    cmpl-float v11, v11, v3

    if-gtz v11, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    const/high16 v12, 0x3f80

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    if-eqz v0, :cond_2

    .line 450
    :cond_1
    const/4 v11, 0x2

    new-array v1, v11, [F

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    aput v12, v1, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    aput v12, v1, v11

    .line 451
    .local v1, coordinates:[F
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 452
    const/4 v11, 0x0

    aget v11, v1, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    const/high16 v13, 0x4396

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->zoomTo(FFFF)V

    .line 455
    .end local v1           #coordinates:[F
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->ensureVisible(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 456
    return-void
.end method

.method private centerBasedOnHighlightViewWithoutAnim(Lcom/htc/album/TabPluginDevice/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 464
    iget-object v2, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 466
    .local v2, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v7, v11

    .line 467
    .local v7, width:F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v4, v11

    .line 469
    .local v4, height:F
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getWidth()I

    move-result v11

    int-to-float v6, v11

    .line 470
    .local v6, thisWidth:F
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getHeight()I

    move-result v11

    int-to-float v5, v11

    .line 472
    .local v5, thisHeight:F
    div-float v11, v6, v7

    const v12, 0x3f19999a

    mul-float v8, v11, v12

    .line 473
    .local v8, z1:F
    div-float v11, v5, v4

    const v12, 0x3f19999a

    mul-float v9, v11, v12

    .line 475
    .local v9, z2:F
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 476
    .local v10, zoom:F
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    .line 477
    const/high16 v11, 0x3f80

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 481
    const v3, 0x3dcccccd

    .line 482
    .local v3, fDeltaScale:F
    const/4 v0, 0x0

    .line 484
    .local v0, bZoom:Z
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v11, :cond_0

    .line 485
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-boolean v0, v11, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v11

    sub-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v11, v10

    cmpl-float v11, v11, v3

    if-lez v11, :cond_1

    .line 490
    const/4 v11, 0x2

    new-array v1, v11, [F

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    aput v12, v1, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    aput v12, v1, v11

    .line 491
    .local v1, coordinates:[F
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 492
    const/4 v11, 0x0

    aget v11, v1, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->zoomTo(FFF)V

    .line 495
    .end local v1           #coordinates:[F
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->ensureVisible(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 496
    return-void
.end method

.method private ensureVisible(Lcom/htc/album/TabPluginDevice/HighlightView;)V
    .locals 10
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 408
    iget-object v6, p1, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 410
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 411
    .local v1, panDeltaX1:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 413
    .local v2, panDeltaX2:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 414
    .local v4, panDeltaY1:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 416
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_2

    move v0, v1

    .line 417
    .local v0, panDeltaX:I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 419
    .local v3, panDeltaY:I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 420
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->panBy(FF)V

    .line 421
    :cond_1
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_2
    move v0, v2

    .line 416
    goto :goto_0

    .restart local v0       #panDeltaX:I
    :cond_3
    move v3, v5

    .line 417
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 295
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 296
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 297
    .local v1, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->setFocus(Z)V

    .line 298
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    .end local v1           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 303
    .restart local v1       #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/album/TabPluginDevice/HighlightView;->getHit(FF)I

    move-result v0

    .line 304
    .local v0, edge:I
    if-eq v0, v5, :cond_2

    .line 305
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 306
    invoke-virtual {v1, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->setFocus(Z)V

    .line 307
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    .line 312
    .end local v0           #edge:I
    .end local v1           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->invalidate()V

    .line 313
    return-void

    .line 301
    .restart local v0       #edge:I
    .restart local v1       #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/htc/album/TabPluginDevice/HighlightView;)V
    .locals 1
    .parameter "hv"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->invalidate()V

    .line 517
    return-void
.end method

.method protected doesScrolling()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/htc/album/TabPluginDevice/HighlightView;
    .locals 1
    .parameter "i"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 500
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 501
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 227
    invoke-super/range {p0 .. p5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 232
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 238
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 239
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    .line 240
    iget-boolean v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_1

    .line 244
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->centerBasedOnHighlightViewWithoutAnim(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    goto :goto_0

    .line 248
    .end local v0           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 317
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/CropImage;

    move-object v0, v5

    check-cast v0, Lcom/htc/album/TabPluginDevice/CropImage;

    .line 318
    .local v0, cropImage:Lcom/htc/album/TabPluginDevice/CropImage;
    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mSaving:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$000(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 404
    :goto_0
    return v5

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 390
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :goto_2
    move v5, v7

    .line 404
    goto :goto_0

    .line 323
    :pswitch_0
    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 324
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 326
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 327
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 328
    .local v2, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v2, v5, v8}, Lcom/htc/album/TabPluginDevice/HighlightView;->getHit(FF)I

    move-result v1

    .line 329
    .local v1, edge:I
    if-eq v1, v7, :cond_5

    .line 330
    iput v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionEdge:I

    .line 331
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastX:F

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastY:F

    .line 334
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    const/16 v5, 0x20

    if-ne v1, v5, :cond_4

    sget-object v5, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v8, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->setMode(Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;)V

    .line 340
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->updateBoundary()V

    goto :goto_1

    .line 334
    :cond_4
    sget-object v5, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    goto :goto_4

    .line 326
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 349
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    .end local v3           #i:I
    :pswitch_1
    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 350
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 351
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 352
    .restart local v2       #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 353
    iput-object v2, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mCrop:Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 354
    const/4 v4, 0x0

    .local v4, j:I
    :goto_6
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 355
    if-ne v4, v3, :cond_6

    .line 354
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 357
    :cond_6
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-virtual {v5, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->setHidden(Z)V

    goto :goto_7

    .line 359
    :cond_7
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->centerBasedOnHighlightView(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 360
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDevice/CropImage;

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v5, v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$102(Lcom/htc/album/TabPluginDevice/CropImage;Z)Z

    move v5, v7

    .line 361
    goto/16 :goto_0

    .line 350
    .end local v4           #j:I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 364
    .end local v2           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    .end local v3           #i:I
    :cond_9
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v5, :cond_a

    .line 365
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->centerBasedOnHighlightView(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 366
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    sget-object v8, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    invoke-virtual {v5, v8}, Lcom/htc/album/TabPluginDevice/HighlightView;->setMode(Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;)V

    .line 368
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    goto/16 :goto_1

    .line 371
    :pswitch_2
    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mWaitingToPick:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$100(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 372
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 373
    :cond_b
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    if-eqz v5, :cond_1

    .line 374
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    iget v8, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastX:F

    sub-float/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastY:F

    sub-float/2addr v10, v11

    invoke-virtual {v5, v8, v9, v10}, Lcom/htc/album/TabPluginDevice/HighlightView;->handleMotion(IFF)V

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastX:F

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mLastY:F

    .line 384
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mMotionHighlightView:Lcom/htc/album/TabPluginDevice/HighlightView;

    invoke-direct {p0, v5}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->ensureVisible(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    goto/16 :goto_1

    .line 392
    :pswitch_3
    invoke-virtual {p0, v7, v7, v7}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->center(ZZZ)V

    goto/16 :goto_2

    .line 399
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v5

    const/high16 v8, 0x3f80

    cmpl-float v5, v5, v8

    if-nez v5, :cond_2

    .line 400
    invoke-virtual {p0, v7, v7, v6}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->center(ZZZ)V

    goto/16 :goto_2

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 390
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->postTranslate(FF)V

    .line 287
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 289
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 290
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v0           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected usePerfectFitBitmap()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 263
    invoke-super {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomIn()V

    .line 264
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 265
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 266
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    goto :goto_0

    .line 268
    .end local v0           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 271
    invoke-super {p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomOut()V

    .line 272
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 273
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 274
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    goto :goto_0

    .line 276
    .end local v0           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomTo(FFF)V

    .line 256
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    .line 257
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v2, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 258
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/HighlightView;->invalidate()V

    goto :goto_0

    .line 260
    .end local v0           #hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    :cond_0
    return-void
.end method
