.class public Lcom/htc/widget/HtcExpandableListView;
.super Lcom/htc/widget/HtcListView;
.source "HtcExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;,
        Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;,
        Lcom/htc/widget/HtcExpandableListView$TangentInterpolator;,
        Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;,
        Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;,
        Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;,
        Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;,
        Lcom/htc/widget/HtcExpandableListView$AnimationListener;,
        Lcom/htc/widget/HtcExpandableListView$SavedState;,
        Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field private static final INCREASE_DURATION:[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAnimatedViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

.field private mArrowDown:Landroid/graphics/drawable/Drawable;

.field mCheckForGroupItemReleased:Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field mCollapseInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mCollapseReduceRunnable:Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;

.field private mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapseReduceViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConnector:Lcom/htc/widget/HtcExpandableListConnector;

.field mDarkModeEnabled:Z

.field mExpandAndMoveInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mExpandGroupCompleted:Z

.field private mExpandIncreaseRunnable:Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;

.field mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mExpandReduceRunnable:Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;

.field private mExpandReduceViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandReduceViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mExpandableAnimationEnabled:Z

.field private mFooterView:Landroid/view/View;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field mGroupPressAnimationEnabled:Z

.field mIndicatorEnabled:Z

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIsFirstTimeDraw:Z

.field mMoveInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mMoveToTopRunnable:Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;

.field mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

.field mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mPressedGroupAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mPressedGroupViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field final mResetFooterHeight:Ljava/lang/Runnable;

.field private mShadowBottom:Landroid/graphics/drawable/Drawable;

.field private mShadowTop:Landroid/graphics/drawable/Drawable;

.field mShouldDrawArrowDown:Z

.field private mShouldDrawFakeDivider:Z

.field mShouldSkipAnimation:Z

.field private mTangentInterpolater:Lcom/htc/widget/HtcExpandableListView$TangentInterpolator;

.field private mTargetTopPosition:[I

.field mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mWaitExpandViewRunnable:Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    new-array v0, v2, [I

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    .line 203
    new-array v0, v3, [I

    const v1, 0x10100a8

    aput v1, v0, v2

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 207
    new-array v0, v3, [I

    const v1, 0x10100a9

    aput v1, v0, v2

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 211
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 215
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_STATE_SETS:[[I

    .line 223
    new-array v0, v3, [I

    const v1, 0x10100a6

    aput v1, v0, v2

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 2397
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->INCREASE_DURATION:[I

    return-void

    .line 211
    nop

    :array_0
    .array-data 0x4
        0xa8t 0x0t 0x1t 0x1t
        0xa9t 0x0t 0x1t 0x1t
    .end array-data

    .line 2397
    :array_1
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 250
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v3, 0x4060

    const/16 v7, 0x5dd

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 1523
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawArrowDown:Z

    .line 1545
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    .line 1546
    iput-boolean v5, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandableAnimationEnabled:Z

    .line 1596
    iput-boolean v5, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupPressAnimationEnabled:Z

    .line 1597
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawFakeDivider:Z

    .line 1598
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mIsFirstTimeDraw:Z

    .line 1602
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandGroupCompleted:Z

    .line 1607
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldSkipAnimation:Z

    .line 1612
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mTargetTopPosition:[I

    .line 1623
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;

    .line 1624
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewHeightList:Ljava/util/ArrayList;

    .line 1625
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 1626
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 1630
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 1634
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 1638
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupViews:Ljava/util/ArrayList;

    .line 1643
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupAnimators:Ljava/util/Map;

    .line 1645
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandAndMoveInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 1646
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mMoveInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1650
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40a0

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1651
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;

    invoke-direct {v2, p0, v6}, Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mMoveToTopRunnable:Lcom/htc/widget/HtcExpandableListView$MoveToTopRunnable;

    .line 1652
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;

    invoke-direct {v2, p0, v6}, Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mWaitExpandViewRunnable:Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;

    .line 1653
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;

    invoke-direct {v2, p0, v6}, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandIncreaseRunnable:Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;

    .line 1654
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;

    invoke-direct {v2, p0, v6}, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceRunnable:Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;

    .line 1655
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;

    invoke-direct {v2, p0, v6}, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceRunnable:Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;

    .line 1777
    iput-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1789
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcExpandableListView$1;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2398
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$TangentInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/HtcExpandableListView$TangentInterpolator;-><init>(Lcom/htc/widget/HtcExpandableListView;F)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mTangentInterpolater:Lcom/htc/widget/HtcExpandableListView$TangentInterpolator;

    .line 2661
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$4;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcExpandableListView$4;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mResetFooterHeight:Ljava/lang/Runnable;

    .line 2970
    iput-boolean v5, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorEnabled:Z

    .line 256
    sget-object v2, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 262
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 264
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    .line 266
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    .line 268
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 269
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    .line 271
    :cond_0
    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    .line 273
    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    .line 275
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x2080160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    .line 281
    const v2, 0x208015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    .line 282
    const v2, 0x2080169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 283
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->initExpandableAnimation()V

    .line 288
    const-string v2, " EXPND_LISTVIEW_MOVE_TOP "

    invoke-static {v5, p0, v7, v2}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mMoveTopMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 290
    const-string v2, " EXPND_LISTVIEW_EXPAND "

    invoke-static {v5, p0, v7, v2}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 292
    const-string v2, " EXPND_LISTVIEW_COLLAPSE "

    invoke-static {v5, p0, v7, v2}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 294
    const-string v2, " EXPND_LISTVIEW_PRESS "

    invoke-static {v5, p0, v7, v2}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mPressMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 296
    const-string v2, " EXPND_LISTVIEW_RELEASE "

    invoke-static {v5, p0, v7, v2}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 299
    return-void

    .line 1612
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/htc/widget/HtcExpandableListView;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListView;->setHardwareLayerEnabled(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->recoverChildren()V

    return-void
.end method

.method static synthetic access$1202(Lcom/htc/widget/HtcExpandableListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawFakeDivider:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/widget/HtcExpandableListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcExpandableListView;ILjava/util/ArrayList;JZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/htc/widget/HtcExpandableListView;->setIncreaseDuration(ILjava/util/ArrayList;JZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListView;->setIncreaseViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListView;->increaseViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->setTargetTopPosition()V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/widget/HtcExpandableListView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mTargetTopPosition:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcExpandableListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->setToTop(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/widget/HtcExpandableListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->checkView(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->recoverExpandReduceViewList()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/widget/HtcExpandableListView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListView;->moveToTop(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mWaitExpandViewRunnable:Lcom/htc/widget/HtcExpandableListView$WaitExpandViewRunnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->getExpandReduceViewList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/widget/HtcExpandableListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->reduceChildren(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/widget/HtcExpandableListView;ILjava/util/ArrayList;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcExpandableListView;->setReduceDuration(ILjava/util/ArrayList;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->setReduceViewHeight(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListView;->reduceViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/widget/HtcExpandableListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->getCollapseReduceViewList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->recoverCollapseReduceViewList()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandIncreaseRunnable:Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcExpandableListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIsFirstTimeDraw:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/widget/HtcExpandableListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/widget/HtcExpandableListView;->mIsFirstTimeDraw:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->adjustFooterHeight()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private adjustFooterHeight()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1728
    iget-boolean v6, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    if-eqz v6, :cond_1

    .line 1762
    :cond_0
    :goto_0
    return-void

    .line 1729
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v6, :cond_0

    .line 1733
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v0

    .line 1734
    .local v0, exactFooterViewsCount:I
    iget-boolean v6, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    if-nez v6, :cond_2

    if-lt v0, v9, :cond_2

    .line 1735
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1737
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector;->getCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    add-int v1, v6, v0

    .line 1738
    .local v1, lastPosition:I
    if-gez v1, :cond_3

    .line 1741
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1742
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1743
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1746
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1747
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1748
    .local v2, lastView:Landroid/view/View;
    if-nez v2, :cond_4

    .line 1749
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1759
    :goto_1
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1751
    :cond_4
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 1752
    .local v3, listlocation:[I
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    .line 1753
    .local v4, location:[I
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->getLocationOnScreen([I)V

    .line 1754
    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1756
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    aget v8, v4, v9

    add-int/2addr v7, v8

    aget v8, v3, v9

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1751
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1752
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private checkView(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2941
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2942
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 2943
    .local v0, location:[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2944
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 2946
    .end local v0           #location:[I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2942
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawArrowDown(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 4
    .parameter "canvas"
    .parameter "item"

    .prologue
    .line 1532
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1533
    .local v1, t:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1534
    .local v0, arrowDownRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1535
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1536
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getDividerHeight()I

    move-result v2

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1537
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1538
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1539
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1540
    return-void
.end method

.method private drawChildItemShadow(Landroid/graphics/Canvas;Landroid/view/View;Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)V
    .locals 6
    .parameter "canvas"
    .parameter "item"
    .parameter "pos"

    .prologue
    const/4 v1, 0x1

    .line 1494
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1497
    .local v2, t:I
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1498
    .local v0, b:I
    iget-object v3, p3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    if-ne v3, v1, :cond_0

    .line 1499
    iget-object v3, p3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    if-ne v3, v4, :cond_2

    .line 1500
    .local v1, isLastChild:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 1501
    iget-object v3, p3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    if-nez v3, :cond_3

    .line 1502
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1503
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1506
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1507
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1499
    .end local v1           #isLastChild:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1510
    .restart local v1       #isLastChild:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1513
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1515
    :cond_4
    iget-object v3, p3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    if-nez v3, :cond_0

    .line 1516
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1517
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mShadowTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 1444
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v3

    .line 1445
    .local v3, headerViewsCount:I
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    add-int/lit8 v8, v12, -0x1

    .line 1446
    .local v8, lastChildFlPos:I
    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    .line 1447
    .local v9, myB:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getChildCount()I

    move-result v1

    .line 1451
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v2, v12, v3

    .local v2, childFlPos:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1453
    if-gez v2, :cond_1

    .line 1452
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    if-le v2, v8, :cond_3

    .line 1486
    :cond_2
    return-void

    .line 1460
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1461
    .local v7, item:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 1462
    .local v11, t:I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1464
    .local v0, b:I
    if-ltz v0, :cond_0

    if-gt v11, v9, :cond_0

    .line 1467
    iget-object v12, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 1468
    .local v10, pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    const/4 v5, 0x0

    .line 1469
    .local v5, indicatorButton:Lcom/htc/widget/HtcIndicatorButton;
    invoke-virtual {v10}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v10, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v12, v12, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    instance-of v12, v7, Landroid/view/ViewGroup;

    if-eqz v12, :cond_5

    .line 1470
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #item:Landroid/view/View;
    const v12, 0x202000d

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1471
    .local v6, indicatorView:Landroid/view/View;
    if-eqz v6, :cond_4

    instance-of v12, v6, Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v12, :cond_4

    move-object v5, v6

    .line 1472
    check-cast v5, Lcom/htc/widget/HtcIndicatorButton;

    .line 1473
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Lcom/htc/widget/HtcIndicatorButton;->setExpanded(Z)V

    .line 1484
    .end local v6           #indicatorView:Landroid/view/View;
    :cond_4
    :goto_2
    invoke-virtual {v10}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_1

    .line 1476
    .restart local v7       #item:Landroid/view/View;
    :cond_5
    invoke-virtual {v10}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v10, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v12, v12, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    instance-of v12, v7, Landroid/view/ViewGroup;

    if-eqz v12, :cond_4

    .line 1477
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #item:Landroid/view/View;
    const v12, 0x202000d

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1478
    .restart local v6       #indicatorView:Landroid/view/View;
    if-eqz v6, :cond_4

    instance-of v12, v6, Lcom/htc/widget/HtcIndicatorButton;

    if-eqz v12, :cond_4

    move-object v5, v6

    .line 1479
    check-cast v5, Lcom/htc/widget/HtcIndicatorButton;

    .line 1480
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/htc/widget/HtcIndicatorButton;->setExpanded(Z)V

    goto :goto_2
.end method

.method private fillFooterHeight()V
    .locals 2

    .prologue
    .line 1721
    iget-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    if-eqz v1, :cond_0

    .line 1725
    :goto_0
    return-void

    .line 1722
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1723
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1724
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private get2DPressAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 10
    .parameter "animatedView"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1946
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1947
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1948
    const-string v3, "scaleX"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleX:F

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1949
    .local v1, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleY:F

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1950
    .local v2, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1951
    .local v0, pressAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1952
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1953
    return-object v0
.end method

.method private get2DReleaseAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 10
    .parameter "animatedView"
    .parameter "pivotY"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1962
    int-to-float v3, p2

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1963
    const-string v3, "scaleX"

    new-array v4, v8, [F

    iget v5, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleX:F

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1964
    .local v0, pvhScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v4, v8, [F

    iget v5, p0, Lcom/htc/widget/HtcListView;->mClickAnimationScaleY:F

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1965
    .local v1, pvhScaleY:Landroid/animation/PropertyValuesHolder;
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1966
    .local v2, releaseAnimation:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1967
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1968
    new-instance v3, Lcom/htc/widget/HtcExpandableListView$3;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcExpandableListView$3;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1974
    return-object v2
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1233
    iget v0, p1, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1236
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getCollapseReduceViewList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2816
    .local v0, collapseReduceViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v6}, Lcom/htc/widget/HtcExpandableListConnector;->getExpandedPosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v7

    add-int v1, v6, v7

    .line 2818
    .local v1, expandedPosition:I
    if-gez v1, :cond_1

    .line 2836
    :cond_0
    return-object v0

    .line 2822
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 2824
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v3, v6, v7

    .line 2826
    .local v3, pos:I
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 2827
    .local v4, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v6, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v6, v6, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 2829
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2830
    .local v5, view:Landroid/view/View;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2822
    .end local v5           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getExpandDuration(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 2435
    const/16 v0, 0x50

    return v0
.end method

.method private getExpandReduceViewList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2470
    .local v0, expandReduceViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v6}, Lcom/htc/widget/HtcExpandableListConnector;->getExpandedPosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v7

    add-int v1, v6, v7

    .line 2473
    .local v1, expandedPosition:I
    if-gez v1, :cond_1

    .line 2490
    :cond_0
    return-object v0

    .line 2477
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 2479
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v3, v6, v7

    .line 2480
    .local v3, pos:I
    iget-object v6, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 2481
    .local v4, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v6, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v6, v6, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 2483
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2484
    .local v5, view:Landroid/view/View;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2477
    .end local v5           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "pos"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 448
    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 449
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 451
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 455
    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 458
    .local v1, isEmpty:Z
    :goto_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 461
    .local v3, stateSetIndex:I
    sget-object v4, Lcom/htc/widget/HtcExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 475
    .end local v1           #isEmpty:Z
    .end local v3           #stateSetIndex:I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 455
    goto :goto_0

    .restart local v1       #isEmpty:Z
    :cond_4
    move v5, v4

    .line 458
    goto :goto_1

    .line 464
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v1           #isEmpty:Z
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 466
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 468
    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/htc/widget/HtcExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 471
    .local v2, stateSet:[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 468
    .end local v2           #stateSet:[I
    :cond_6
    sget-object v2, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private getMoveDuration(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 2446
    const/16 v0, 0x12c

    return v0
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    .line 1153
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return v0

    .line 1156
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1158
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1182
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1201
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .parameter "packedPosition"

    .prologue
    .line 1134
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1136
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 1114
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1115
    const/4 v0, 0x2

    .line 1118
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getReduceMoveDuration(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 2951
    const/16 v0, 0x64

    return v0
.end method

.method private increaseViewHeight(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "step"

    .prologue
    .line 2043
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2044
    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v1, p1

    .line 2046
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2047
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2048
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2055
    :goto_0
    return-void

    .line 2051
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2052
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2053
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private initExpandableAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1766
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->ignoreFooterViewInBouncing(Z)V

    .line 1767
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1768
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x2090061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    .line 1769
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1770
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 1771
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->fillFooterHeight()V

    .line 1773
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-super {p0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1774
    return-void
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 595
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 596
    .local v0, footerViewsStart:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveToTop(II)V
    .locals 0
    .parameter "position"
    .parameter "top"

    .prologue
    .line 2352
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcExpandableListView;->setSelectionFromTop(II)V

    .line 2353
    return-void
.end method

.method private recoverChildren()V
    .locals 2

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->recoverChildren()V

    .line 1851
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1852
    return-void
.end method

.method private recoverCollapseReduceViewList()V
    .locals 5

    .prologue
    .line 2840
    const/4 v2, 0x0

    .line 2841
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2842
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2843
    .restart local v2       #view:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2844
    check-cast v3, Lcom/htc/widget/HtcListItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v3, v2

    .line 2846
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2847
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    .line 2848
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2841
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2851
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2852
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2853
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2856
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method private recoverExpandReduceViewList()V
    .locals 5

    .prologue
    .line 2859
    const/4 v2, 0x0

    .line 2860
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2861
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2862
    .restart local v2       #view:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2863
    check-cast v3, Lcom/htc/widget/HtcListItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v3, v2

    .line 2865
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2866
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    .line 2867
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2860
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2870
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2871
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2872
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2875
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method private reduceChildren(I)V
    .locals 2
    .parameter "newChildrenSize"

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->reduceChildren(I)V

    .line 1846
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1847
    return-void
.end method

.method private reduceViewHeight(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "step"

    .prologue
    .line 2877
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2878
    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v1, p1

    .line 2880
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2881
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2882
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2889
    :goto_0
    return-void

    .line 2885
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2886
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2887
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setHardwareLayerEnabled(Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1830
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    return-void
.end method

.method private setIncreaseDuration(ILjava/util/ArrayList;JZ)I
    .locals 11
    .parameter "viewCount"
    .parameter
    .parameter "startTime"
    .parameter "expandAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;JZ)I"
        }
    .end annotation

    .prologue
    .line 2358
    .local p2, duration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    int-to-float v0, p1

    .line 2359
    .local v0, count:F
    const/4 v7, 0x0

    .line 2360
    .local v7, percent:F
    const/4 v8, 0x0

    .line 2361
    .local v8, prePercent:F
    const/4 v1, 0x0

    .line 2362
    .local v1, eachDuration:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2363
    .local v4, now:J
    sub-long v9, v4, p3

    long-to-int v6, v9

    .line 2366
    .local v6, passTime:I
    if-eqz p5, :cond_0

    .line 2367
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getExpandDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    .line 2371
    .local v3, moveDuration:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, p1, :cond_4

    .line 2373
    iget-object v9, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandAndMoveInterpolator:Landroid/view/animation/AccelerateInterpolator;

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    div-float/2addr v10, v0

    invoke-virtual {v9, v10}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v7

    .line 2375
    if-nez v2, :cond_2

    .line 2376
    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-int v1, v9

    .line 2377
    if-lez v1, :cond_1

    .line 2378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2382
    :goto_2
    move v8, v7

    .line 2371
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2369
    .end local v2           #i:I
    .end local v3           #moveDuration:I
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getMoveDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    .restart local v3       #moveDuration:I
    goto :goto_0

    .line 2380
    .restart local v2       #i:I
    :cond_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2384
    :cond_2
    int-to-float v9, v3

    sub-float v10, v7, v8

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 2385
    if-lez v1, :cond_3

    .line 2386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2391
    :goto_4
    move v8, v7

    goto :goto_3

    .line 2388
    :cond_3
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2394
    :cond_4
    return v3
.end method

.method private setIncreaseViewHeight(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "height"

    .prologue
    .line 2058
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2059
    check-cast v1, Lcom/htc/widget/HtcListItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v1, p1

    .line 2061
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2062
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2063
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2070
    :goto_0
    return-void

    .line 2066
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2067
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2068
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setReduceDuration(ILjava/util/ArrayList;J)I
    .locals 11
    .parameter "viewCount"
    .parameter
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 2892
    .local p2, duration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    int-to-float v0, p1

    .line 2893
    .local v0, count:F
    const/4 v7, 0x0

    .line 2894
    .local v7, percent:F
    const/4 v8, 0x0

    .line 2895
    .local v8, prePercent:F
    const/4 v1, 0x0

    .line 2896
    .local v1, eachDuration:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2897
    .local v4, now:J
    sub-long v9, v4, p3

    long-to-int v6, v9

    .line 2899
    .local v6, passTime:I
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getReduceMoveDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    .line 2901
    .local v3, moveDuration:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 2902
    iget-object v9, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseInterpolator:Landroid/view/animation/DecelerateInterpolator;

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    div-float/2addr v10, v0

    invoke-virtual {v9, v10}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v7

    .line 2903
    if-nez v2, :cond_1

    .line 2904
    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-int v1, v9

    .line 2905
    if-lez v1, :cond_0

    .line 2906
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2910
    :goto_1
    move v8, v7

    .line 2901
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2908
    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2912
    :cond_1
    int-to-float v9, v3

    sub-float v10, v7, v8

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 2913
    if-lez v1, :cond_2

    .line 2914
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2918
    :goto_3
    move v8, v7

    goto :goto_2

    .line 2916
    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2921
    :cond_3
    return v3
.end method

.method private setReduceViewHeight(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 2925
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2926
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v1, p1

    .line 2928
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2929
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2930
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2937
    :goto_0
    return-void

    .line 2933
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2934
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2935
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setTargetTopPosition()V
    .locals 5

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mTargetTopPosition:[I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getLocationOnScreen([I)V

    .line 2349
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mTargetTopPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getTopBorderHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 2350
    return-void
.end method

.method private setToTop(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcExpandableListView;->setSelectionFromTop(II)V

    .line 2356
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    if-nez v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->removeFooterView(Landroid/view/View;)Z

    .line 1584
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1585
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    if-nez v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 1588
    :cond_1
    return-void
.end method

.method public collapseGroup(I)Z
    .locals 3
    .parameter "groupPos"

    .prologue
    .line 839
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Please do NOT invoke collapseGroup() during animation!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    if-eqz v1, :cond_1

    .line 841
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldSkipAnimation:Z

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 847
    .local v0, retValue:Z
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector;->getCurrentExpandedGroupChildCount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawArrowDown:Z

    .line 850
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_3

    .line 851
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 854
    :cond_3
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .parameter "view"
    .parameter "flatListPosition"
    .parameter "id"

    .prologue
    .line 1207
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1221
    :goto_0
    return-object v0

    .line 1212
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1213
    .local v6, adjustedPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1214
    .local v7, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    .line 1215
    .local v8, pos:Lcom/htc/widget/HtcExpandableListPosition;
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 1217
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcExpandableListView;->getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J

    move-result-wide p3

    .line 1218
    invoke-virtual {v8}, Lcom/htc/widget/HtcExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1219
    .local v2, packedPosition:J
    invoke-virtual {v8}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 1221
    new-instance v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcExpandableListView;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 320
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    const/16 v17, 0x0

    .line 328
    .local v17, saveCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x22

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    .line 329
    .local v8, clipToPadding:Z
    :goto_1
    if-eqz v8, :cond_3

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    move/from16 v18, v0

    .line 332
    .local v18, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v19, v0

    .line 333
    .local v19, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    move/from16 v21, v0

    add-int v21, v21, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v23, v0

    add-int v23, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 338
    .end local v18           #scrollX:I
    .end local v19           #scrollY:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 340
    .local v9, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v22

    sub-int v21, v21, v22

    sub-int v21, v21, v9

    add-int/lit8 v13, v21, -0x1

    .line 342
    .local v13, lastChildFlPos:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    .line 350
    .local v15, myB:I
    const/4 v14, -0x4

    .line 352
    .local v14, lastItemType:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 357
    .local v11, indicatorRect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getChildCount()I

    move-result v6

    .line 358
    .local v6, childCount:I
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v7, v21, v9

    .local v7, childFlPos:I
    :goto_2
    if-ge v10, v6, :cond_7

    .line 361
    if-gez v7, :cond_6

    .line 359
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 328
    .end local v6           #childCount:I
    .end local v7           #childFlPos:I
    .end local v8           #clipToPadding:Z
    .end local v9           #headerViewsCount:I
    .end local v10           #i:I
    .end local v11           #indicatorRect:Landroid/graphics/Rect;
    .end local v13           #lastChildFlPos:I
    .end local v14           #lastItemType:I
    .end local v15           #myB:I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 364
    .restart local v6       #childCount:I
    .restart local v7       #childFlPos:I
    .restart local v8       #clipToPadding:Z
    .restart local v9       #headerViewsCount:I
    .restart local v10       #i:I
    .restart local v11       #indicatorRect:Landroid/graphics/Rect;
    .restart local v13       #lastChildFlPos:I
    .restart local v14       #lastItemType:I
    .restart local v15       #myB:I
    :cond_6
    if-le v7, v13, :cond_8

    .line 432
    :cond_7
    if-eqz v8, :cond_1

    .line 433
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 369
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 370
    .local v12, item:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v20

    .line 371
    .local v20, t:I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 374
    .local v5, b:I
    if-ltz v5, :cond_4

    move/from16 v0, v20

    if-gt v0, v15, :cond_4

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v16

    .line 383
    .local v16, pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcExpandableListView;->drawChildItemShadow(Landroid/graphics/Canvas;Landroid/view/View;Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)V

    .line 429
    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 1982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->isInBouncing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1983
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListView;->findMotionRow(I)I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v1, v2, v3

    .line 1984
    .local v1, pressedPos:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1985
    .local v0, animatedChild:Landroid/view/View;
    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->releaseItem(Landroid/view/View;)V

    .line 1987
    .end local v0           #animatedChild:Landroid/view/View;
    .end local v1           #pressedPos:I
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 491
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 495
    .local v2, flatListPosition:I
    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->isInBouncing()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v4, :cond_2

    .line 496
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 497
    .local v0, adjustedPosition:I
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 499
    .local v3, pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 503
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 504
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 505
    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 513
    .end local v0           #adjustedPosition:I
    .end local v1           #divider:Landroid/graphics/drawable/Drawable;
    .end local v3           #pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    :goto_0
    return-void

    .line 508
    .restart local v0       #adjustedPosition:I
    .restart local v3       #pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 512
    .end local v0           #adjustedPosition:I
    .end local v3           #pos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Lcom/htc/widget/HtcListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandGroup(I)Z
    .locals 1
    .parameter "groupPos"

    .prologue
    .line 784
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 8
    .parameter "groupPos"
    .parameter "animate"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 801
    iget-boolean v4, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Please do NOT invoke expandGroup() during animation!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 802
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    if-eqz v4, :cond_1

    .line 803
    iput-boolean v7, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldSkipAnimation:Z

    .line 806
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Lcom/htc/widget/HtcExpandableListPosition;->obtain(IIII)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 808
    .local v1, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 811
    .local v2, retValue:Z
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector;->getCurrentExpandedGroupChildCount()I

    move-result v4

    if-ltz v4, :cond_2

    iput-boolean v7, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawArrowDown:Z

    .line 814
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    if-eqz v4, :cond_3

    .line 815
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    invoke-interface {v4, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 818
    :cond_3
    if-eqz p2, :cond_4

    .line 819
    iget-object v4, v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v4, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    .line 821
    .local v0, groupFlatPos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int v3, v0, v4

    .line 822
    .local v3, shiftedGroupPosition:I
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcExpandableListView;->smoothScrollToPosition(II)V

    .line 825
    .end local v0           #groupFlatPos:I
    .end local v3           #shiftedGroupPosition:I
    :cond_4
    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 827
    return v2
.end method

.method findReducedChildrenCountWithPreLayout(II)V
    .locals 1
    .parameter "groupPosition"
    .parameter "exandedFlatPos"

    .prologue
    .line 2460
    iput p2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 2461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    .line 2462
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->findReducedChildrenCount(I)V

    .line 2464
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->layoutChildren()V

    .line 2465
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 542
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentExpandedGroup()I
    .locals 1

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->getCurrentExpandedGroup()I

    move-result v0

    return v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .parameter "flatListPosition"

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 965
    const-wide v1, 0xffffffffL

    .line 972
    :goto_0
    return-wide v1

    .line 968
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 969
    .local v0, adjustedPosition:I
    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 970
    .local v3, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 971
    .local v1, packedPos:J
    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    .line 991
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-static {p1, p2}, Lcom/htc/widget/HtcExpandableListPosition;->obtainPosition(J)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 993
    .local v1, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v2, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    .line 994
    .local v0, flatListPosition:I
    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 995
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 1022
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    .line 1031
    :goto_0
    return-wide v3

    .line 1024
    :cond_0
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 1026
    .local v0, groupPos:I
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 1028
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 1031
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 1010
    .local v0, selectedPos:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 662
    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v8

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    if-eqz v0, :cond_0

    .line 666
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/HtcListView;->m2DPressAnimationEnabled:Z

    if-eqz v0, :cond_3

    .line 667
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->cancelPressAnimation()V

    .line 670
    :cond_3
    iput-boolean v6, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldSkipAnimation:Z

    .line 673
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 675
    .local v7, posMetadata:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    iget-object v0, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J

    move-result-wide p3

    .line 677
    iget-object v0, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 680
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_5

    .line 681
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 687
    :cond_4
    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldSkipAnimation:Z

    if-nez v0, :cond_0

    .line 694
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_6

    .line 695
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->fillFooterHeight()V

    .line 697
    :cond_6
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 698
    iget-object v0, p0, Lcom/htc/widget/HtcListView;->mBoucingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 699
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->doAnimFinalize()V

    .line 702
    :cond_7
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 706
    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandableAnimationEnabled:Z

    if-eqz v0, :cond_a

    .line 707
    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 711
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    if-eqz v0, :cond_8

    .line 712
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcExpandableListView$AnimationListener;->onAnimationStart()V

    .line 714
    :cond_8
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mCollapseReduceRunnable:Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcExpandableListView$CollapseReduceRunnable;->start(II)V

    .line 724
    :cond_9
    :goto_1
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    .line 759
    :goto_2
    const/4 v8, 0x1

    .line 771
    .local v8, returnValue:Z
    :goto_3
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_0

    .line 716
    .end local v8           #returnValue:Z
    :cond_a
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    .line 717
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->getCurrentExpandedGroupChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iput-boolean v6, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawArrowDown:Z

    .line 718
    :cond_b
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_9

    .line 719
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    goto :goto_1

    .line 729
    :cond_c
    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandableAnimationEnabled:Z

    if-eqz v0, :cond_f

    .line 730
    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 734
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    if-eqz v0, :cond_d

    .line 735
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcExpandableListView$AnimationListener;->onAnimationStart()V

    .line 737
    :cond_d
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandReduceRunnable:Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcExpandableListView$ExpandReduceRunnable;->start(II)V

    .line 747
    :cond_e
    :goto_4
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    goto :goto_2

    .line 739
    :cond_f
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    .line 740
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->getCurrentExpandedGroupChildCount()I

    move-result v0

    if-ltz v0, :cond_10

    iput-boolean v8, p0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawArrowDown:Z

    .line 741
    :cond_10
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_e

    .line 742
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    goto :goto_4

    .line 762
    :cond_11
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_12

    .line 763
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    .line 764
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v1, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;->onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z

    move-result v8

    goto/16 :goto_0

    .line 768
    :cond_12
    const/4 v8, 0x0

    .restart local v8       #returnValue:Z
    goto :goto_3
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1897
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onDetachedFromWindow()V

    .line 1899
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mCheckForGroupItemReleased:Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mCheckForGroupItemReleased:Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1903
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1905
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupAnimators:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1906
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupAnimators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1908
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    .line 2214
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    .line 2215
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector;->shouldHideView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2218
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2220
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2221
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setUseCustomHeight(Z)V

    move-object v3, v2

    .line 2222
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2223
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2224
    check-cast v2, Lcom/htc/widget/HtcListItem;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2217
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2226
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2227
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2228
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2231
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->reduceChildren(I)V

    .line 2232
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector;->unSetHideViewFlag()V

    .line 2233
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    .line 2237
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandGroupCompleted:Z

    .line 2239
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1411
    instance-of v1, p1, Lcom/htc/widget/HtcExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 1412
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1422
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1416
    check-cast v0, Lcom/htc/widget/HtcExpandableListView$SavedState;

    .line 1417
    .local v0, ss:Lcom/htc/widget/HtcExpandableListView$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1419
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1420
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    iget-object v2, v0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1400
    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1401
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/htc/widget/HtcExpandableListView$SavedState;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/htc/widget/HtcExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2013
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 2014
    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupPressAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 2017
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1716
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->onSizeChanged(IIII)V

    .line 1717
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView;->adjustFooterHeight()V

    .line 1718
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1996
    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    if-eqz v1, :cond_0

    .line 1997
    const/4 v0, 0x1

    .line 2002
    :goto_0
    return v0

    .line 2000
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2002
    .local v0, handled:Z
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 2025
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onWindowFocusChanged(Z)V

    .line 2026
    if-nez p1, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mCheckForGroupItemReleased:Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mCheckForGroupItemReleased:Lcom/htc/widget/HtcExpandableListView$CheckForGroupItemReleased;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2035
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 628
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 637
    :goto_0
    return v1

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->isInBouncing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 636
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 637
    .local v0, adjustedPosition:I
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/htc/widget/HtcExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method protected releaseItem()V
    .locals 5

    .prologue
    .line 1921
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1922
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1923
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcExpandableListView;->get2DReleaseAnimation(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1924
    .local v1, releaseAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x32

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1925
    new-instance v3, Lcom/htc/widget/HtcExpandableListView$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcExpandableListView$2;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1932
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v3, :cond_0

    .line 1933
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mReleaseMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v3}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 1934
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1921
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1936
    .end local v1           #releaseAnim:Landroid/animation/ObjectAnimator;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1937
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mPressedGroupAnimators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1938
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 566
    if-eqz p1, :cond_0

    .line 568
    new-instance v0, Lcom/htc/widget/HtcExpandableListConnector;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/htc/widget/HtcExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    .line 571
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    iget-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListConnector;->setDarkModeEnabled(Z)V

    .line 572
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewHeightList:Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcExpandableListConnector;->linkHideViewList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 579
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 580
    return-void

    .line 575
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 527
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationListener(Lcom/htc/widget/HtcExpandableListView$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1841
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    .line 1842
    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childDivider"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 487
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childIndicator"

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1253
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1271
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    .line 1272
    iput p2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    .line 1273
    return-void
.end method

.method public setDarkModeEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1554
    iget-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    if-ne p1, v0, :cond_0

    .line 1571
    :goto_0
    return-void

    .line 1555
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setDarkModeEnabled(Z)V

    .line 1556
    iput-boolean p1, p0, Lcom/htc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    .line 1560
    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mExpandableAnimationEnabled:Z

    .line 1561
    if-eqz p1, :cond_2

    .line 1562
    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcExpandableListView;->enableAnimation(IZ)V

    .line 1563
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->removeFooterView(Landroid/view/View;)Z

    .line 1564
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 1565
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcExpandableListView;->ignoreFooterViewInBouncing(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1560
    goto :goto_1

    .line 1567
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 1568
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x2080169

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 1569
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcExpandableListView;->ignoreFooterViewInBouncing(Z)V

    goto :goto_0
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "groupIndicator"

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1285
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1286
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    .line 1288
    :cond_0
    return-void
.end method

.method public setHandleChildBackground(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setHandleChildBackground(Z)V

    .line 1435
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1302
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    .line 1303
    iput p2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    .line 1304
    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2972
    iput-boolean p1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorEnabled:Z

    .line 2973
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 942
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    .line 943
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 915
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    .line 916
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 872
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    .line 873
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 890
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    .line 891
    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 555
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 556
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 1
    .parameter "onScrollListener"

    .prologue
    .line 1785
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 1786
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1787
    return-void
.end method

.method public setPositionMap(Lcom/htc/widget/PositionMap;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setPositionMap(Lcom/htc/widget/PositionMap;)V

    .line 1430
    return-void
.end method

.method public setSections([Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setSections([Ljava/lang/Object;)V

    .line 1426
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 1061
    invoke-static {p1, p2}, Lcom/htc/widget/HtcExpandableListPosition;->obtainChildPosition(II)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v1

    .line 1063
    .local v1, elChildPos:Lcom/htc/widget/HtcExpandableListPosition;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1065
    .local v2, flatChildPos:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 1069
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 1087
    :goto_0
    return v3

    .line 1071
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    .line 1073
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1076
    if-nez v2, :cond_1

    .line 1077
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1081
    :cond_1
    iget-object v3, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1082
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1084
    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 1085
    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 1087
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1040
    invoke-static {p1}, Lcom/htc/widget/HtcExpandableListPosition;->obtainGroupPosition(I)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v1

    .line 1042
    .local v1, elGroupPos:Lcom/htc/widget/HtcExpandableListPosition;
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1043
    .local v2, pm:Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    .line 1044
    iget-object v3, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1045
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1046
    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    .line 1047
    return-void
.end method
