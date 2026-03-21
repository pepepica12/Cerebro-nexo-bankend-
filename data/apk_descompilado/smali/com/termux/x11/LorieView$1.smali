.class public Lcom/termux/x11/LorieView$1;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "LorieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LorieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lcom/termux/x11/MainActivity;

.field public currentComposingText:Ljava/lang/CharSequence;

.field public currentPos:I

.field public mBatchEditNesting:I

.field public requestedPos:I

.field public resetCursorPosition:Z

.field public final synthetic this$0:Lcom/termux/x11/LorieView;


# direct methods
.method public constructor <init>(Lcom/termux/x11/LorieView;Landroid/view/View;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/LorieView;
    .param p2, "arg0"    # Landroid/view/View;
    .param p3, "arg1"    # Z

    .line 349
    iput-object p1, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 350
    invoke-static {}, Lcom/termux/x11/MainActivity;->getInstance()Lcom/termux/x11/MainActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/x11/LorieView$1;->a:Lcom/termux/x11/MainActivity;

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    .line 397
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 3

    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 366
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    .line 367
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-ne v0, v2, :cond_0

    .line 368
    iput-boolean v1, p0, Lcom/termux/x11/LorieView$1;->resetCursorPosition:Z

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 373
    :cond_1
    monitor-exit p0

    .line 374
    return v1

    .line 373
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newPos"    # I

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - 1 + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnectionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " NEW "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x1

    iget v3, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    add-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBatchEditNesting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-lez p2, :cond_0

    .line 519
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    goto :goto_0

    .line 521
    :cond_0
    iput-boolean v3, p0, Lcom/termux/x11/LorieView$1;->resetCursorPosition:Z

    .line 522
    :goto_0
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-nez v0, :cond_1

    .line 524
    invoke-virtual {p0}, Lcom/termux/x11/LorieView$1;->sendCursorPosition()V

    .line 526
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/LorieView$1;->replaceText(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 3
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 432
    iget v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    iget v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    if-le v0, v1, :cond_0

    if-lez p1, :cond_0

    .line 436
    iget v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    .line 437
    return v2

    .line 440
    :cond_0
    const/16 v0, 0x43

    if-ne p1, v2, :cond_1

    iget v1, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-lez v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    iget-object v1, v1, Lcom/termux/x11/LorieView;->keyReleaseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 448
    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 449
    .end local v1    # "i":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 450
    const/16 v1, 0x70

    invoke-virtual {p0, v1}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 452
    .end local v0    # "i":I
    iget v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    .line 453
    iget v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    if-gt v0, v2, :cond_4

    .line 454
    iput-boolean v2, p0, Lcom/termux/x11/LorieView$1;->resetCursorPosition:Z

    .line 456
    :cond_4
    return v2
.end method

.method public endBatchEdit()Z
    .locals 3

    .line 379
    monitor-enter p0

    .line 380
    :try_start_0
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 385
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    .line 386
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/termux/x11/LorieView$1;->sendCursorPosition()V

    .line 388
    const/4 v0, -0x1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 390
    :cond_0
    :goto_0
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    monitor-exit p0

    return v1

    .line 392
    :cond_2
    monitor-exit p0

    .line 393
    return v1

    .line 392
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 3
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 421
    invoke-static {}, Lcom/termux/x11/LorieView$1$$ExternalSyntheticApiModelOutline1;->m()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "  "

    goto :goto_1

    :goto_0
    const-string v0, " "

    :goto_1
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/termux/x11/LorieView$1$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v0

    return-object v0

    .line 423
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 415
    const-string v0, " "

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 414
    const-string v0, " "

    return-object v0
.end method

.method public replaceText(Ljava/lang/CharSequence;Z)Z
    .locals 6
    .param p1, "newText"    # Ljava/lang/CharSequence;
    .param p2, "reuse"    # Z

    .line 465
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 466
    .local v0, "oldLen":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 467
    .local v1, "newLen":I
    :cond_1
    const/16 v2, 0x43

    if-lez v0, :cond_5

    if-lez v1, :cond_5

    iget-object v3, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 468
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 469
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sub-int v4, v0, v1

    if-ge v3, v4, :cond_3

    .line 470
    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 471
    .end local v3    # "i":I
    move v2, v0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 472
    iget-object v3, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/termux/x11/LorieView;->sendTextEvent([B)V

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    nop

    .end local v2    # "i":I
    goto :goto_4

    .line 474
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_6

    .line 475
    invoke-virtual {p0, v2}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 474
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 476
    .end local v3    # "i":I
    if-eqz p1, :cond_7

    .line 477
    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/termux/x11/LorieView;->sendTextEvent([B)V

    .line 480
    :cond_7
    :goto_4
    if-eqz p2, :cond_8

    move-object v2, p1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    iput-object v2, p0, Lcom/termux/x11/LorieView$1;->currentComposingText:Ljava/lang/CharSequence;

    .line 482
    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->a:Lcom/termux/x11/MainActivity;

    iget-boolean v2, v2, Lcom/termux/x11/MainActivity;->useTermuxEKBarBehaviour:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->a:Lcom/termux/x11/MainActivity;

    iget-object v2, v2, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    if-eqz v2, :cond_9

    .line 483
    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->a:Lcom/termux/x11/MainActivity;

    iget-object v2, v2, Lcom/termux/x11/MainActivity;->mExtraKeys:Lcom/termux/x11/utils/TermuxX11ExtraKeys;

    invoke-virtual {v2}, Lcom/termux/x11/utils/TermuxX11ExtraKeys;->unsetSpecialKeys()V

    .line 484
    :cond_9
    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/termux/x11/LorieView;->commitedText:Z

    .line 485
    return v3
.end method

.method public requestCursorUpdates(I)Z
    .locals 5
    .param p1, "cursorUpdateMode"    # I

    .line 543
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    new-instance v2, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 544
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v2

    iget v3, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    iget v4, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    .line 545
    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    move-result-object v2

    .line 546
    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    .line 543
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 547
    const/4 v0, 0x1

    return v0
.end method

.method public requestCursorUpdates(II)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .param p2, "cursorUpdateFilter"    # I

    .line 552
    invoke-virtual {p0, p1}, Lcom/termux/x11/LorieView$1;->requestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public sendCursorPosition()V
    .locals 7

    .line 400
    iget-boolean v0, p0, Lcom/termux/x11/LorieView$1;->resetCursorPosition:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 402
    const/4 v0, 0x1

    iput v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    iget v3, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    iget v4, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENDING CURSOR POS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnectionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method public sendKey(I)V
    .locals 3
    .param p1, "k"    # I

    .line 427
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 428
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-virtual {v0, v2, p1, v2}, Lcom/termux/x11/LorieView;->sendKeyEvent(IIZ)Z

    .line 429
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 538
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-virtual {v0, p1}, Lcom/termux/x11/LorieView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/termux/x11/LorieView$1;->replaceText(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 491
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 492
    if-ne p1, p2, :cond_1

    .line 493
    if-ge p1, v1, :cond_0

    .line 494
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    goto :goto_0

    .line 495
    :cond_0
    if-le p1, v1, :cond_1

    .line 496
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/termux/x11/LorieView$1;->sendKey(I)V

    .line 499
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 500
    iget-object v0, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    invoke-static {v0}, Lcom/termux/x11/LorieView;->access$000(Lcom/termux/x11/LorieView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/x11/LorieView$1;->this$0:Lcom/termux/x11/LorieView;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 501
    iput v1, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    goto :goto_1

    .line 502
    :cond_2
    iget v0, p0, Lcom/termux/x11/LorieView$1;->mBatchEditNesting:I

    if-lez v0, :cond_3

    .line 504
    if-ne p1, p2, :cond_3

    iget v0, p0, Lcom/termux/x11/LorieView$1;->currentPos:I

    if-le p1, v0, :cond_3

    .line 505
    iput p1, p0, Lcom/termux/x11/LorieView$1;->requestedPos:I

    .line 507
    :cond_3
    :goto_1
    return v1
.end method
