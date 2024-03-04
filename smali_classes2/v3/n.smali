.class public Lv3/n;
.super Lcom/google/android/gms/common/api/d;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;-><init>()V

    const-string p1, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    iput-object p1, p0, Lv3/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/d$b;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lv3/n;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/d$b;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lv3/n;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
