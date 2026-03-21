.class public abstract Lkotlin/text/CharsKt__CharKt;
.super Lkotlin/text/CharsKt__CharJVMKt;
.source "Char.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Char.kt\nkotlin/text/CharsKt__CharKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n1#2:340\n*E\n"
.end annotation


# direct methods
.method public static final equals(CCZ)Z
    .locals 6
    .param p0, "$this$equals"    # C
    .param p1, "other"    # C
    .param p2, "ignoreCase"    # Z

    .line 224
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 225
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 227
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 228
    .local v2, "thisUpper":C
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 230
    .local v3, "otherUpper":C
    if-eq v2, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v4, v5, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method
