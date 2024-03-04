.class public Ln5/c;
.super Lo5/b;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/api/gax/retrying/RetrySettings;Lk5/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo5/b;-><init>(Lcom/google/api/gax/retrying/RetrySettings;Lk5/a;)V

    return-void
.end method

.method public static a(Lcom/google/api/gax/retrying/RetrySettings;)Ln5/c;
    .locals 2

    new-instance v0, Ln5/c;

    invoke-static {}, Lcom/google/api/core/NanoClock;->getDefaultClock()Lk5/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ln5/c;-><init>(Lcom/google/api/gax/retrying/RetrySettings;Lk5/a;)V

    return-object v0
.end method
