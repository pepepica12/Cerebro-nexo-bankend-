.class public final Lkotlin/collections/builders/MapBuilder$Companion;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/builders/MapBuilder$Companion;
    .param p1, "capacity"    # I

    .line 492
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->computeHashSize(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I
    .locals 1
    .param p0, "$this"    # Lkotlin/collections/builders/MapBuilder$Companion;
    .param p1, "hashSize"    # I

    .line 492
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->computeShift(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final computeHashSize(I)I
    .locals 1
    .param p1, "capacity"    # I

    .line 500
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public final computeShift(I)I
    .locals 1
    .param p1, "hashSize"    # I

    .line 502
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
