.class public Lcom/termux/x11/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/MainActivity;->initMouseAuxButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final startOffset:[F

.field public final startPosition:[I

.field public startTime:J

.field public final tapTimeout:I

.field public final synthetic this$0:Lcom/termux/x11/MainActivity;

.field public final touchSlop:I

.field public final synthetic val$pos:Landroid/widget/ImageButton;

.field public final synthetic val$primaryLayer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/termux/x11/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/x11/MainActivity;

    .line 459
    iput-object p1, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    iput-object p2, p0, Lcom/termux/x11/MainActivity$6;->val$primaryLayer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/termux/x11/MainActivity$6;->val$pos:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iget-object p2, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/termux/x11/MainActivity$6;->touchSlop:I

    .line 461
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p2

    iput p2, p0, Lcom/termux/x11/MainActivity$6;->tapTimeout:I

    .line 462
    const/4 p2, 0x2

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/termux/x11/MainActivity$6;->startOffset:[F

    .line 463
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/termux/x11/MainActivity$6;->startPosition:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 476
    :pswitch_0
    iget-object v0, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    invoke-virtual {v0}, Lcom/termux/x11/MainActivity;->getTerminalToolbarViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    .line 477
    .local v0, "pager":Landroidx/viewpager/widget/ViewPager;
    new-array v1, v1, [I

    .line 478
    .local v1, "offset":[I
    iget-object v4, p0, Lcom/termux/x11/MainActivity$6;->val$primaryLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 479
    iget-object v4, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v4, v4, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v5, v5, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/termux/x11/MainActivity$6;->val$primaryLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 480
    .local v4, "maxX":F
    iget-object v5, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v5, v5, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v6, v6, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/termux/x11/MainActivity$6;->val$primaryLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 481
    .local v5, "maxY":F
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 484
    :cond_0
    iget-object v6, p0, Lcom/termux/x11/MainActivity$6;->val$primaryLayer:Landroid/widget/LinearLayout;

    aget v7, v1, v2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/termux/x11/MainActivity$6;->startOffset:[F

    aget v2, v8, v2

    sub-float/2addr v7, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v7, v2

    iget-object v2, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v2, v2, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-static {v7, v2, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setX(F)V

    .line 485
    iget-object v2, p0, Lcom/termux/x11/MainActivity$6;->val$primaryLayer:Landroid/widget/LinearLayout;

    aget v6, v1, v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/termux/x11/MainActivity$6;->startOffset:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/termux/x11/MainActivity$6;->this$0:Lcom/termux/x11/MainActivity;

    iget-object v7, v7, Lcom/termux/x11/MainActivity;->frm:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-static {v6, v7, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setY(F)V

    .line 486
    goto :goto_0

    .line 489
    .end local v0    # "pager":Landroidx/viewpager/widget/ViewPager;
    .end local v1    # "offset":[I
    .end local v4    # "maxX":F
    .end local v5    # "maxY":F
    :pswitch_1
    new-array v0, v1, [I

    .line 490
    .local v0, "_pos":[I
    iget-object v1, p0, Lcom/termux/x11/MainActivity$6;->val$primaryLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 491
    iget-object v1, p0, Lcom/termux/x11/MainActivity$6;->startOffset:[F

    aget v1, v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lcom/termux/x11/MainActivity$6;->startPosition:[I

    aget v4, v4, v2

    aget v5, v0, v2

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 492
    .local v1, "deltaX":I
    iget-object v4, p0, Lcom/termux/x11/MainActivity$6;->startOffset:[F

    aget v4, v4, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/termux/x11/MainActivity$6;->startPosition:[I

    aget v5, v5, v3

    aget v6, v0, v3

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 493
    .local v4, "deltaY":I
    iget-object v5, p0, Lcom/termux/x11/MainActivity$6;->val$pos:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/view/View;->setPressed(Z)V

    .line 495
    mul-int v2, v1, v1

    mul-int v5, v4, v4

    add-int/2addr v2, v5

    iget v5, p0, Lcom/termux/x11/MainActivity$6;->touchSlop:I

    if-ge v2, v5, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/termux/x11/MainActivity$6;->startTime:J

    sub-long/2addr v5, v7

    iget v2, p0, Lcom/termux/x11/MainActivity$6;->tapTimeout:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gtz v2, :cond_1

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 497
    return v3

    .line 469
    .end local v0    # "_pos":[I
    .end local v1    # "deltaX":I
    .end local v4    # "deltaY":I
    :pswitch_2
    iget-object v0, p0, Lcom/termux/x11/MainActivity$6;->val$primaryLayer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/termux/x11/MainActivity$6;->startPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 470
    iget-object v0, p0, Lcom/termux/x11/MainActivity$6;->startOffset:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    .line 471
    iget-object v0, p0, Lcom/termux/x11/MainActivity$6;->startOffset:[F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/x11/MainActivity$6;->startTime:J

    .line 473
    iget-object v0, p0, Lcom/termux/x11/MainActivity$6;->val$pos:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 474
    nop

    .line 502
    :cond_1
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
