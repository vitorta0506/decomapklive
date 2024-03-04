.class public final Lorg/conscrypt/ct/VerifiedSCT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/VerifiedSCT$Status;
    }
.end annotation


# instance fields
.field public final a:Lorg/conscrypt/ct/SignedCertificateTimestamp;

.field public final b:Lorg/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method public constructor <init>(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/VerifiedSCT$Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/conscrypt/ct/VerifiedSCT;->a:Lorg/conscrypt/ct/SignedCertificateTimestamp;

    .line 3
    iput-object p2, p0, Lorg/conscrypt/ct/VerifiedSCT;->b:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-void
.end method
