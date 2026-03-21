.class public abstract Lkotlin/jvm/internal/TypeIntrinsics;
.super Ljava/lang/Object;
.source "TypeIntrinsics.java"


# direct methods
.method public static getFunctionArity(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 258
    nop

    .line 261
    instance-of v0, p0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_0
    instance-of v0, p0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_1
    nop

    .line 270
    nop

    .line 273
    nop

    .line 276
    nop

    .line 279
    nop

    .line 282
    nop

    .line 285
    nop

    .line 288
    nop

    .line 291
    nop

    .line 294
    nop

    .line 297
    nop

    .line 300
    nop

    .line 303
    nop

    .line 306
    nop

    .line 309
    nop

    .line 312
    nop

    .line 315
    nop

    .line 318
    nop

    .line 321
    nop

    .line 324
    nop

    .line 327
    nop

    .line 331
    const/4 v0, -0x1

    return v0
.end method

.method public static isFunctionOfArity(Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "arity"    # I

    .line 336
    instance-of v0, p0, Lkotlin/Function;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->getFunctionArity(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
