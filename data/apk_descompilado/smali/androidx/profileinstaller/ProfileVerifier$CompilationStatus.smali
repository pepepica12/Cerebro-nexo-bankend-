.class public Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
.super Ljava/lang/Object;
.source "ProfileVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/ProfileVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompilationStatus"
.end annotation


# instance fields
.field public final mHasCurrentProfile:Z

.field public final mHasEmbeddedProfile:Z

.field public final mHasReferenceProfile:Z

.field public final mResultCode:I


# direct methods
.method public constructor <init>(IZZZ)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "hasReferenceProfile"    # Z
    .param p3, "hasCurrentProfile"    # Z
    .param p4, "hasEmbeddedProfile"    # Z

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput p1, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mResultCode:I

    .line 544
    iput-boolean p3, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mHasCurrentProfile:Z

    .line 545
    iput-boolean p2, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mHasReferenceProfile:Z

    .line 546
    iput-boolean p4, p0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;->mHasEmbeddedProfile:Z

    .line 547
    return-void
.end method
