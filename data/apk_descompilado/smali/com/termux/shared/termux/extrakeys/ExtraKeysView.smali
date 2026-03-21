.class public final Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
.super Landroid/widget/GridLayout;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;,
        Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;
    }
.end annotation


# instance fields
.field public mButtonActiveBackgroundColor:I

.field public mButtonActiveTextColor:I

.field public mButtonBackgroundColor:I

.field public mButtonTextColor:I

.field public mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

.field public mHandler:Landroid/os/Handler;

.field public mLongPressCount:I

.field public mLongPressRepeatDelay:I

.field public mLongPressTimeout:I

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mRepetitiveKeys:Ljava/util/List;

.field public mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mSpecialButtons:Ljava/util/Map;

.field public mSpecialButtonsKeys:Ljava/util/Set;

.field public mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;


# direct methods
.method public static synthetic $r8$lambda$1lRGO_Yu4ch5FqKlSPFmG6m3uII(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->lambda$reload$1(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VWD85jfENJfNMsRVKfg-8w_Fyw8(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->lambda$startScheduledExecutors$2(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mA5ioZYJnoXN8gokForBypG-85U(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->lambda$reload$0(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 195
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    sget-object v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;->PRIMARY_REPETITIVE_KEYS:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setRepetitiveKeys(Ljava/util/List;)V

    .line 198
    invoke-virtual {p0, p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getDefaultSpecialButtons(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setSpecialButtons(Ljava/util/Map;)V

    .line 200
    const/4 v0, 0x0

    const v1, -0x808081

    const/4 v2, -0x1

    const v3, -0x7f2116

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setButtonColors(IIII)V

    .line 202
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setLongPressTimeout(I)V

    .line 203
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->setLongPressRepeatDelay(I)V

    .line 204
    return-void
.end method

.method public static synthetic access$008(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)I
    .locals 2
    .param p0, "x0"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 76
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    return v0
.end method

.method public static maximumLength([[Ljava/lang/Object;)I
    .locals 5
    .param p0, "matrix"    # [[Ljava/lang/Object;

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "m":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 570
    .local v3, "row":[Ljava/lang/Object;
    array-length v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 569
    .end local v3    # "row":[Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_0
    return v0
.end method


# virtual methods
.method public createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 5
    .param p1, "buttonKey"    # Ljava/lang/String;
    .param p2, "needUpdate"    # Z

    .line 553
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-static {p1}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 554
    .local v0, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 555
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsCreated(Z)V

    .line 556
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x101032f

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 557
    .local v2, "button":Landroid/widget/Button;
    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    if-eqz p2, :cond_2

    .line 559
    iget-object v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_2
    return-object v2
.end method

.method public dismissPopup()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 518
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 519
    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 520
    return-void
.end method

.method public getButtonActiveTextColor()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    return v0
.end method

.method public getDefaultSpecialButtons(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)Ljava/util/Map;
    .locals 1
    .param p1, "extraKeysView"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 271
    new-instance v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    return-object v0
.end method

.method public isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z
    .locals 2
    .param p1, "button"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    .line 524
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    iget-object v1, p1, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic lambda$reload$0(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0
    .param p1, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "view"    # Landroid/view/View;

    .line 326
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 327
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 328
    return-void
.end method

.method public final synthetic lambda$reload$1(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p2, "button"    # Landroid/widget/Button;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 331
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 376
    return v1

    .line 354
    :pswitch_0
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 355
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 356
    return v1

    .line 339
    :pswitch_1
    iget-object v0, p1, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->popup:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 343
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 344
    iget-object v0, p1, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->popup:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    invoke-virtual {p0, p3, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->showPopup(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 347
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 348
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->dismissPopup()V

    .line 351
    :cond_1
    return v1

    .line 359
    :pswitch_2
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 360
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 362
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->dismissPopup()V

    .line 366
    iget-object v0, p1, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->popup:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p1, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->popup:Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    invoke-virtual {p0, p3, v0, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->performClick()Z

    .line 373
    :cond_4
    :goto_0
    return v1

    .line 333
    :pswitch_3
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 335
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->startScheduledExecutors(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 336
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic lambda$startScheduledExecutors$2(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 442
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    .line 443
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 444
    return-void
.end method

.method public onAnyExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 420
    invoke-virtual {p0, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    if-lez v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    iget-object v1, p2, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 423
    .local v0, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    if-nez v0, :cond_1

    return-void

    .line 426
    :cond_1
    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsActive(Z)V

    .line 427
    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    if-nez v1, :cond_2

    .line 428
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsLocked(Z)V

    .line 429
    .end local v0    # "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    :cond_2
    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 432
    :goto_0
    return-void
.end method

.method public onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 394
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    invoke-interface {v0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;->onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    .line 396
    :cond_0
    return-void
.end method

.method public performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 399
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    invoke-interface {v0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;->performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v3, 0x3

    if-lt v0, v1, :cond_1

    .line 409
    invoke-virtual {p3, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 413
    invoke-virtual {p3, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 417
    :cond_2
    :goto_0
    return-void
.end method

.method public readSpecialButton(Lcom/termux/shared/termux/extrakeys/SpecialButton;Z)Ljava/lang/Boolean;
    .locals 3
    .param p1, "specialButton"    # Lcom/termux/shared/termux/extrakeys/SpecialButton;
    .param p2, "autoSetInActive"    # Z

    .line 539
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 540
    .local v0, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 542
    :cond_0
    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isCreated:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isActive:Z

    if-nez v1, :cond_2

    :cond_1
    goto :goto_0

    .line 546
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v1, v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->isLocked:Z

    if-nez v1, :cond_3

    .line 547
    invoke-virtual {v0, v2}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->setIsActive(Z)V

    .line 549
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 543
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public reload()V
    .locals 10

    .line 285
    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->setExtraKeys()V

    .line 286
    invoke-static {}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->getExtraKeysInfo()Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;

    move-result-object v0

    .line 287
    .local v0, "extraKeysInfo":Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;
    if-nez v0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 291
    .local v2, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;->buttons:Ljava/util/List;

    .end local v2    # "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 295
    invoke-virtual {v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysInfo;->getMatrix()[[Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    move-result-object v1

    .line 297
    .local v1, "buttons":[[Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    array-length v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 298
    invoke-static {v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->maximumLength([[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 300
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 301
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_2
    aget-object v4, v1, v2

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 302
    aget-object v4, v1, v2

    aget-object v4, v4, v3

    .line 305
    .local v4, "buttonInfo":Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    invoke-virtual {p0, v4}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 306
    iget-object v5, v4, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v5

    .line 307
    .local v5, "button":Landroid/widget/Button;
    if-nez v5, :cond_3

    return-void

    .line 309
    .end local v5    # "button":Landroid/widget/Button;
    :cond_2
    new-instance v5, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x101032f

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 312
    .restart local v5    # "button":Landroid/widget/Button;
    :cond_3
    new-instance v7, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$2;

    const/high16 v8, -0x1000000

    invoke-direct {v7, p0, v8}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$2;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v7, v4, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->display:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget v7, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 323
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 325
    new-instance v7, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v4, v5}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda1;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    new-instance v7, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v4, v5}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda2;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    new-instance v7, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v7}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 381
    .local v7, "param":Landroid/widget/GridLayout$LayoutParams;
    iput v6, v7, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 382
    iput v6, v7, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 383
    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 384
    sget-object v6, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v3, v6, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v9

    iput-object v9, v7, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 385
    invoke-static {v2, v6, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 386
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 301
    .end local v4    # "buttonInfo":Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .end local v5    # "button":Landroid/widget/Button;
    .end local v7    # "param":Landroid/widget/GridLayout$LayoutParams;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 300
    .end local v3    # "col":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 391
    .end local v2    # "row":I
    return-void
.end method

.method public setButtonColors(IIII)V
    .locals 0
    .param p1, "buttonTextColor"    # I
    .param p2, "buttonActiveTextColor"    # I
    .param p3, "buttonBackgroundColor"    # I
    .param p4, "buttonActiveBackgroundColor"    # I

    .line 233
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    .line 234
    iput p2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveTextColor:I

    .line 235
    iput p3, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonBackgroundColor:I

    .line 236
    iput p4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    .line 237
    return-void
.end method

.method public setExtraKeysViewClient(Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;)V
    .locals 0
    .param p1, "extraKeysViewClient"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    .line 209
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mExtraKeysViewClient:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$IExtraKeysView;

    .line 210
    return-void
.end method

.method public setLongPressRepeatDelay(I)V
    .locals 2
    .param p1, "longPressRepeatDelay"    # I

    .line 261
    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_0

    .line 262
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    goto :goto_0

    .line 264
    :cond_0
    const/16 v0, 0x50

    iput v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    .line 266
    :goto_0
    return-void
.end method

.method public setLongPressTimeout(I)V
    .locals 1
    .param p1, "longPressDuration"    # I

    .line 252
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xbb8

    if-gt p1, v0, :cond_0

    .line 253
    iput p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    goto :goto_0

    .line 255
    :cond_0
    const/16 v0, 0x190

    iput v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    .line 257
    :goto_0
    return-void
.end method

.method public setRepetitiveKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "repetitiveKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    .line 215
    return-void
.end method

.method public setSpecialButtons(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/termux/shared/termux/extrakeys/SpecialButton;",
            "Lcom/termux/shared/termux/extrakeys/SpecialButtonState;",
            ">;)V"
        }
    .end annotation

    .line 219
    .local p1, "specialButtons":Ljava/util/Map;, "Ljava/util/Map<Lcom/termux/shared/termux/extrakeys/SpecialButton;Lcom/termux/shared/termux/extrakeys/SpecialButtonState;>;"
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    .line 220
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsKeys:Ljava/util/Set;

    .line 221
    return-void
.end method

.method public showPopup(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "extraButton"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;

    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 488
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 490
    .local v1, "height":I
    invoke-virtual {p0, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p2, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    .line 492
    .local v2, "button":Landroid/widget/Button;
    if-nez v2, :cond_1

    return-void

    .line 494
    .end local v2    # "button":Landroid/widget/Button;
    :cond_0
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x101032f

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 495
    .restart local v2    # "button":Landroid/widget/Button;
    iget v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    :cond_1
    iget-object v4, p2, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->display:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 499
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 500
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 501
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 502
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 503
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 504
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 505
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 506
    iget v5, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mButtonActiveBackgroundColor:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 507
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 508
    iget-object v5, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 509
    iget-object v5, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 510
    iget-object v5, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 511
    iget-object v5, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 512
    iget-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 513
    iget-object v4, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mPopupWindow:Landroid/widget/PopupWindow;

    mul-int/lit8 v5, v1, -0x2

    invoke-virtual {v4, p1, v3, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 514
    return-void
.end method

.method public startScheduledExecutors(Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;

    .line 435
    invoke-virtual {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->stopScheduledExecutors()V

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressCount:I

    .line 437
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mRepetitiveKeys:Ljava/util/List;

    iget-object v1, p2, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 441
    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Landroid/view/View;Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V

    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    int-to-long v3, v0

    iget v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressRepeatDelay:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0, p2}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtons:Ljava/util/Map;

    iget-object v1, p2, Lcom/termux/shared/termux/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/termux/extrakeys/SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/extrakeys/SpecialButton;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    .line 451
    .local v0, "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    if-nez v0, :cond_1

    return-void

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 453
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    .line 454
    :cond_2
    new-instance v1, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    invoke-direct {v1, p0, v0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/SpecialButtonState;)V

    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    .line 455
    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    iget v3, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mLongPressTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    .end local v0    # "state":Lcom/termux/shared/termux/extrakeys/SpecialButtonState;
    :cond_3
    :goto_0
    return-void
.end method

.method public stopScheduledExecutors()V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 462
    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 467
    iput-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->mSpecialButtonsLongHoldRunnable:Lcom/termux/shared/termux/extrakeys/ExtraKeysView$SpecialButtonsLongHoldRunnable;

    .line 469
    :cond_1
    return-void
.end method
