.class public Lcom/htc/textselection/SelectionAnchor;
.super Ljava/lang/Object;
.source "SelectionAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/SelectionAnchor$MyImageView;,
        Lcom/htc/textselection/SelectionAnchor$VisualMode;
    }
.end annotation


# static fields
.field public static ANCHOR_HEIGHT:I

.field public static ANCHOR_OFFSET:I

.field public static ANCHOR_WIDTH:I

.field public static final POST_ANCHOR:Ljava/lang/Object;

.field public static final PRIOR_ANCHOR:Ljava/lang/Object;


# instance fields
.field private DRAWABLE_HEIGHT:I

.field private mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

.field private final mAnchorOffset:Landroid/graphics/PointF;

.field private mAnchorWindow:Landroid/widget/PopupWindow;

.field private mPostDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressdByPen:Z

.field private mPriorDrawable:Landroid/graphics/drawable/Drawable;

.field mVisualMode:Lcom/htc/textselection/SelectionAnchor$VisualMode;

.field private mVisualModeLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    .line 44
    sput v0, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    .line 45
    sput v0, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/textselection/SelectionAnchor;->PRIOR_ANCHOR:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/textselection/SelectionAnchor;->POST_ANCHOR:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "ctx"
    .parameter "isPriorAnchor"
    .parameter "prior"
    .parameter "post"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    .line 29
    iput-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    .line 30
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorOffset:Landroid/graphics/PointF;

    .line 36
    iput-boolean v7, p0, Lcom/htc/textselection/SelectionAnchor;->mPressdByPen:Z

    .line 46
    iput v7, p0, Lcom/htc/textselection/SelectionAnchor;->DRAWABLE_HEIGHT:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 56
    .local v1, density:F
    const/high16 v3, 0x4140

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    .line 57
    const/high16 v3, 0x423c

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    .line 58
    const/high16 v3, 0x426c

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    .line 60
    new-instance v3, Lcom/htc/textselection/SelectionAnchor$MyImageView;

    invoke-direct {v3, p0, p1}, Lcom/htc/textselection/SelectionAnchor$MyImageView;-><init>(Lcom/htc/textselection/SelectionAnchor;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    .line 61
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    sget v5, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    sget v6, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    invoke-virtual {v3, v7, v7, v7, v7}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setPadding(IIII)V

    .line 66
    if-eqz p2, :cond_0

    .line 67
    move-object v0, p3

    .line 68
    .local v0, anchorDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    sget-object v4, Lcom/htc/textselection/SelectionAnchor;->PRIOR_ANCHOR:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setTag(Ljava/lang/Object;)V

    .line 69
    sget-object v3, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    iput-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mVisualMode:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    .line 77
    :goto_0
    iput-object p3, p0, Lcom/htc/textselection/SelectionAnchor;->mPriorDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    iput-object p4, p0, Lcom/htc/textselection/SelectionAnchor;->mPostDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    invoke-virtual {v3, v0}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/textselection/SelectionAnchor;->DRAWABLE_HEIGHT:I

    .line 83
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    sget v5, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    sget v6, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    .line 84
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 85
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 88
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 90
    return-void

    .line 72
    .end local v0           #anchorDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, p4

    .line 73
    .restart local v0       #anchorDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    sget-object v4, Lcom/htc/textselection/SelectionAnchor;->POST_ANCHOR:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setTag(Ljava/lang/Object;)V

    .line 74
    sget-object v3, Lcom/htc/textselection/SelectionAnchor$VisualMode;->BOTTOM:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    iput-object v3, p0, Lcom/htc/textselection/SelectionAnchor;->mVisualMode:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 149
    return-void
.end method

.method public getTouchDownOffset()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorOffset:Landroid/graphics/PointF;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isVisualModeLocked()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/htc/textselection/SelectionAnchor;->mVisualModeLocked:Z

    return v0
.end method

.method public lockVisualMode(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/htc/textselection/SelectionAnchor;->mVisualModeLocked:Z

    .line 123
    return-void
.end method

.method public setTouchDownOffset(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorOffset:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 94
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorOffset:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 95
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 103
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "touchable"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 153
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 154
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    invoke-virtual {v0, p1}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public setVisualMode(Lcom/htc/textselection/SelectionAnchor$VisualMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mVisualMode:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    if-eq v0, p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/htc/textselection/SelectionAnchor;->mVisualMode:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    .line 116
    iget-object v1, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mVisualMode:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    sget-object v2, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mPriorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mPostDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public show(Landroid/view/View;II)V
    .locals 6
    .parameter "parent"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 130
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mVisualMode:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    sget-object v1, Lcom/htc/textselection/SelectionAnchor$VisualMode;->TOP:Lcom/htc/textselection/SelectionAnchor$VisualMode;

    if-ne v0, v1, :cond_0

    .line 131
    sget v0, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 132
    sget v0, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    sub-int/2addr p3, v0

    .line 133
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    sget v1, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    iget v2, p0, Lcom/htc/textselection/SelectionAnchor;->DRAWABLE_HEIGHT:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v5, v1, v5, v5}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setPadding(IIII)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, v5, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 145
    :goto_1
    return-void

    .line 136
    :cond_0
    sget v0, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 138
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorImageView:Lcom/htc/textselection/SelectionAnchor$MyImageView;

    const/4 v1, 0x1

    sget v2, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    iget v4, p0, Lcom/htc/textselection/SelectionAnchor;->DRAWABLE_HEIGHT:I

    sub-int/2addr v2, v4

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->setPadding(IIII)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/SelectionAnchor;->mAnchorWindow:Landroid/widget/PopupWindow;

    move v1, p2

    move v2, p3

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_1
.end method
