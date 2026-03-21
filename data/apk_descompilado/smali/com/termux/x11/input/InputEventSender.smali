.class public final Lcom/termux/x11/input/InputEventSender;
.super Ljava/lang/Object;
.source "InputEventSender.java"


# static fields
.field public static final buttons:Ljava/util/List;


# instance fields
.field public capturedPointerSpeedFactor:F

.field public dexMetaKeyCapture:Z

.field public final mInjector:Lcom/termux/x11/input/InputStub;

.field public final mPressedKeys:Ljava/util/TreeSet;

.field public final mPressedTextKeys:Ljava/util/TreeSet;

.field public pauseKeyInterceptingWithEsc:Z

.field public pointerCapture:Z

.field public final pointers:[Z

.field public preferScancodes:Z

.field public scaleTouchpad:Z

.field public stylusButtonContactModifierMode:Z

.field public stylusIsMouse:Z

.field public tapToMove:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/termux/x11/input/InputEventSender$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/x11/input/InputEventSender;->buttons:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/termux/x11/input/InputStub;)V
    .locals 2
    .param p1, "injector"    # Lcom/termux/x11/input/InputStub;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/x11/input/InputEventSender;->tapToMove:Z

    .line 34
    iput-boolean v0, p0, Lcom/termux/x11/input/InputEventSender;->preferScancodes:Z

    .line 35
    iput-boolean v0, p0, Lcom/termux/x11/input/InputEventSender;->pointerCapture:Z

    .line 36
    iput-boolean v0, p0, Lcom/termux/x11/input/InputEventSender;->scaleTouchpad:Z

    .line 37
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/termux/x11/input/InputEventSender;->capturedPointerSpeedFactor:F

    .line 38
    iput-boolean v0, p0, Lcom/termux/x11/input/InputEventSender;->dexMetaKeyCapture:Z

    .line 39
    iput-boolean v0, p0, Lcom/termux/x11/input/InputEventSender;->pauseKeyInterceptingWithEsc:Z

    .line 40
    iput-boolean v0, p0, Lcom/termux/x11/input/InputEventSender;->stylusIsMouse:Z

    .line 41
    iput-boolean v0, p0, Lcom/termux/x11/input/InputEventSender;->stylusButtonContactModifierMode:Z

    .line 94
    const/16 v0, 0xa

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/termux/x11/input/InputEventSender;->pointers:[Z

    .line 48
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    .line 51
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/InputEventSender;->mPressedTextKeys:Ljava/util/TreeSet;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/termux/x11/input/InputEventSender;->mPressedKeys:Ljava/util/TreeSet;

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public sendCursorMove(FFZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "relative"    # Z

    .line 87
    iget-object v0, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v5, p3

    .end local p1    # "x":F
    .end local p2    # "y":F
    .end local p3    # "relative":Z
    .local v1, "x":F
    .local v2, "y":F
    .local v5, "relative":Z
    invoke-interface/range {v0 .. v5}, Lcom/termux/x11/input/InputStub;->sendMouseEvent(FFIZZ)V

    .line 88
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 14
    .param p1, "e"    # Landroid/view/KeyEvent;

    .line 148
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 149
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 151
    .local v1, "pressed":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "We\'ve got key event with FLAG_CANCELED, it will not be consumed. Details: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "KeyEvent"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v3

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/termux/x11/input/InputStub;->sendTextEvent([B)V

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/termux/x11/input/InputStub;->sendTextEvent([B)V

    .line 168
    :cond_3
    :goto_1
    return v3

    .line 171
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v2

    .line 175
    .local v4, "no_modifiers":Z
    :goto_2
    const/16 v7, 0x42

    if-eq v0, v7, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    int-to-char v7, v7

    goto :goto_3

    :cond_8
    move v7, v2

    .line 176
    .local v7, "unicode":C
    :goto_3
    iget-boolean v8, p0, Lcom/termux/x11/input/InputEventSender;->preferScancodes:Z

    if-nez v8, :cond_9

    if-nez v4, :cond_a

    :cond_9
    goto :goto_4

    :cond_a
    move v8, v2

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v8

    .line 178
    .local v8, "scancode":I
    :goto_5
    iget-boolean v9, p0, Lcom/termux/x11/input/InputEventSender;->preferScancodes:Z

    if-nez v9, :cond_e

    .line 179
    if-eqz v1, :cond_d

    if-eqz v7, :cond_d

    if-eqz v4, :cond_d

    .line 180
    iget-object v6, p0, Lcom/termux/x11/input/InputEventSender;->mPressedTextKeys:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/2addr v6, v5

    const/16 v9, 0x3a

    if-eqz v6, :cond_b

    .line 182
    iget-object v6, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-interface {v6, v2, v9, v2}, Lcom/termux/x11/input/InputStub;->sendKeyEvent(IIZ)Z

    .line 184
    :cond_b
    iget-object v6, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/termux/x11/input/InputStub;->sendTextEvent([B)V

    .line 186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 187
    iget-object v5, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-interface {v5, v2, v9, v3}, Lcom/termux/x11/input/InputStub;->sendKeyEvent(IIZ)Z

    .line 188
    :cond_c
    return v3

    .line 191
    :cond_d
    if-nez v1, :cond_e

    iget-object v5, p0, Lcom/termux/x11/input/InputEventSender;->mPressedTextKeys:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 192
    iget-object v2, p0, Lcom/termux/x11/input/InputEventSender;->mPressedTextKeys:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 193
    return v3

    .line 201
    :cond_e
    const/4 v5, 0x3

    new-array v9, v5, [C

    fill-array-data v9, :array_0

    new-array v10, v5, [C

    fill-array-data v10, :array_1

    new-array v11, v5, [C

    fill-array-data v11, :array_2

    new-array v5, v5, [C

    fill-array-data v5, :array_3

    filled-new-array {v9, v10, v11, v5}, [[C

    move-result-object v5

    .line 208
    .local v5, "chars":[[C
    array-length v9, v5

    move v10, v2

    :goto_6
    if-ge v10, v9, :cond_13

    aget-object v11, v5, v10

    .line 209
    .local v11, "i":[C
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    aget-char v13, v11, v2

    if-eq v12, v13, :cond_f

    .line 210
    goto :goto_7

    .line 212
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10

    aget-char v12, v11, v3

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 213
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v12

    aget-char v13, v11, v3

    nop

    if-ne v12, v13, :cond_12

    .line 214
    :cond_11
    iget-object v9, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    const/16 v10, 0x3b

    invoke-interface {v9, v2, v10, v1}, Lcom/termux/x11/input/InputStub;->sendKeyEvent(IIZ)Z

    .line 215
    iget-object v9, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    aget-char v6, v11, v6

    invoke-interface {v9, v2, v6, v1}, Lcom/termux/x11/input/InputStub;->sendKeyEvent(IIZ)Z

    .line 216
    return v3

    .line 208
    .end local v11    # "i":[C
    :cond_12
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 223
    :cond_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_14

    iget-object v6, p0, Lcom/termux/x11/input/InputEventSender;->mPressedKeys:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 224
    return v3

    .line 226
    :cond_14
    if-eqz v1, :cond_15

    .line 227
    iget-object v3, p0, Lcom/termux/x11/input/InputEventSender;->mPressedKeys:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 229
    :cond_15
    iget-object v3, p0, Lcom/termux/x11/input/InputEventSender;->mPressedKeys:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 231
    :goto_8
    const/16 v3, 0x6f

    if-ne v0, v3, :cond_16

    if-nez v1, :cond_16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 232
    invoke-static {v2}, Lcom/termux/x11/MainActivity;->setCapturingEnabled(Z)V

    .line 235
    :cond_16
    iget-object v2, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-interface {v2, v8, v0, v1}, Lcom/termux/x11/input/InputStub;->sendKeyEvent(IIZ)Z

    move-result v2

    return v2

    nop

    :array_0
    .array-data 2
        0x4ds
        0x40s
        0x9s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x12s
        0x23s
        0xas
    .end array-data

    nop

    :array_2
    .array-data 2
        0x11s
        0x2as
        0xfs
    .end array-data

    nop

    :array_3
    .array-data 2
        0x51s
        0x2bs
        0x46s
    .end array-data
.end method

.method public sendMouseClick(IZ)V
    .locals 12
    .param p1, "button"    # I
    .param p2, "relative"    # Z

    .line 80
    sget-object v0, Lcom/termux/x11/input/InputEventSender;->buttons:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move v4, p1

    move v6, p2

    .end local p1    # "button":I
    .end local p2    # "relative":Z
    .local v4, "button":I
    .local v6, "relative":Z
    invoke-interface/range {v1 .. v6}, Lcom/termux/x11/input/InputStub;->sendMouseEvent(FFIZZ)V

    .line 83
    move v11, v6

    .end local v6    # "relative":Z
    .local v11, "relative":Z
    iget-object v6, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move v9, v4

    .end local v4    # "button":I
    .local v9, "button":I
    invoke-interface/range {v6 .. v11}, Lcom/termux/x11/input/InputStub;->sendMouseEvent(FFIZZ)V

    .line 84
    move v6, v11

    .end local v9    # "button":I
    .end local v11    # "relative":Z
    .restart local v4    # "button":I
    .restart local v6    # "relative":Z
    return-void
.end method

.method public sendMouseDown(IZ)V
    .locals 7
    .param p1, "button"    # I
    .param p2, "relative"    # Z

    .line 68
    sget-object v0, Lcom/termux/x11/input/InputEventSender;->buttons:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move v4, p1

    move v6, p2

    .end local p1    # "button":I
    .end local p2    # "relative":Z
    .local v4, "button":I
    .local v6, "relative":Z
    invoke-interface/range {v1 .. v6}, Lcom/termux/x11/input/InputStub;->sendMouseEvent(FFIZZ)V

    .line 71
    return-void
.end method

.method public sendMouseEvent(Landroid/graphics/PointF;IZZ)V
    .locals 7
    .param p1, "pos"    # Landroid/graphics/PointF;
    .param p2, "button"    # I
    .param p3, "down"    # Z
    .param p4, "relative"    # Z

    .line 57
    sget-object v0, Lcom/termux/x11/input/InputEventSender;->buttons:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    int-to-float v0, v0

    :cond_2
    move v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p2    # "button":I
    .end local p3    # "down":Z
    .end local p4    # "relative":Z
    .local v4, "button":I
    .local v5, "down":Z
    .local v6, "relative":Z
    invoke-interface/range {v1 .. v6}, Lcom/termux/x11/input/InputStub;->sendMouseEvent(FFIZZ)V

    .line 60
    return-void
.end method

.method public sendMouseUp(IZ)V
    .locals 7
    .param p1, "button"    # I
    .param p2, "relative"    # Z

    .line 74
    sget-object v0, Lcom/termux/x11/input/InputEventSender;->buttons:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v4, p1

    move v6, p2

    .end local p1    # "button":I
    .end local p2    # "relative":Z
    .local v4, "button":I
    .local v6, "relative":Z
    invoke-interface/range {v1 .. v6}, Lcom/termux/x11/input/InputStub;->sendMouseEvent(FFIZZ)V

    .line 77
    return-void
.end method

.method public sendMouseWheelEvent(FF)V
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .line 91
    iget-object v0, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-interface {v0, p1, p2}, Lcom/termux/x11/input/InputStub;->sendMouseWheelEvent(FF)V

    .line 92
    return-void
.end method

.method public sendStylusEvent(FFIIIIIZZ)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pressure"    # I
    .param p4, "tiltX"    # I
    .param p5, "tiltY"    # I
    .param p6, "orientation"    # I
    .param p7, "buttons"    # I
    .param p8, "eraser"    # Z
    .param p9, "mouse"    # Z

    .line 63
    iget-object v0, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/termux/x11/input/InputStub;->sendStylusEvent(FFIIIIIZZ)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transformed x "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " y "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " pressure "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tiltX "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tiltY "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " orientation "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " buttons "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " eraser "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mouseMode "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "STYLUS_EVENT"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;Lcom/termux/x11/input/RenderData;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "renderData"    # Lcom/termux/x11/input/RenderData;

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 106
    .local v0, "action":I
    const/4 v1, 0x2

    const/16 v2, 0x13

    const/16 v3, 0xa

    const/16 v4, 0x14

    const/4 v5, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    goto :goto_2

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 132
    .local v1, "activePointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 133
    .local v3, "id":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget-object v7, p2, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p2, Lcom/termux/x11/input/RenderData;->screenWidth:I

    invoke-static {v6, v5, v7}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v6

    .line 134
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget-object v8, p2, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p2, Lcom/termux/x11/input/RenderData;->screenHeight:I

    invoke-static {v7, v5, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v5

    .line 135
    .local v5, "y":I
    if-eqz v0, :cond_2

    const/4 v7, 0x5

    if-ne v0, v7, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v7, v4

    goto :goto_1

    :goto_0
    const/16 v7, 0x12

    .line 136
    .local v7, "a":I
    :goto_1
    if-ne v7, v4, :cond_4

    .line 137
    iget-object v4, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-interface {v4, v2, v3, v6, v5}, Lcom/termux/x11/input/InputStub;->sendTouchEvent(IIII)V

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-interface {v2, v7, v3, v6, v5}, Lcom/termux/x11/input/InputStub;->sendTouchEvent(IIII)V

    goto :goto_6

    .line 110
    .end local v1    # "activePointerIndex":I
    .end local v3    # "id":I
    .end local v5    # "y":I
    .end local v6    # "x":I
    .end local v7    # "a":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 112
    .local v1, "pointerCount":I
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_3
    if-ge v6, v1, :cond_5

    .line 113
    iget-object v7, p0, Lcom/termux/x11/input/InputEventSender;->pointers:[Z

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    aput-boolean v5, v7, v8

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    nop

    .line 115
    .end local v6    # "p":I
    const/4 v6, 0x0

    .restart local v6    # "p":I
    :goto_4
    if-ge v6, v1, :cond_6

    .line 116
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget-object v8, p2, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p2, Lcom/termux/x11/input/RenderData;->screenWidth:I

    invoke-static {v7, v5, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v7

    .line 117
    .local v7, "x":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, p2, Lcom/termux/x11/input/RenderData;->scale:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, p2, Lcom/termux/x11/input/RenderData;->screenHeight:I

    invoke-static {v8, v5, v9}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    .line 118
    .local v8, "y":I
    iget-object v9, p0, Lcom/termux/x11/input/InputEventSender;->pointers:[Z

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    const/4 v11, 0x1

    aput-boolean v11, v9, v10

    .line 119
    iget-object v9, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-interface {v9, v2, v10, v7, v8}, Lcom/termux/x11/input/InputStub;->sendTouchEvent(IIII)V

    .line 115
    .end local v7    # "x":I
    .end local v8    # "y":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    nop

    .line 123
    .end local v6    # "p":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_5
    if-ge v2, v3, :cond_8

    .line 124
    iget-object v6, p0, Lcom/termux/x11/input/InputEventSender;->pointers:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_7

    .line 125
    iget-object v6, p0, Lcom/termux/x11/input/InputEventSender;->mInjector:Lcom/termux/x11/input/InputStub;

    invoke-interface {v6, v4, v2, v5, v5}, Lcom/termux/x11/input/InputStub;->sendTouchEvent(IIII)V

    .line 123
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    nop

    .line 127
    .end local v1    # "pointerCount":I
    .end local v2    # "p":I
    nop

    .line 140
    :goto_6
    return-void
.end method
