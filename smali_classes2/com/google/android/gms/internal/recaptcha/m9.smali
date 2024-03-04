.class abstract Lcom/google/android/gms/internal/recaptcha/m9;
.super Lcom/google/android/gms/internal/recaptcha/o9;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/o9;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/m9;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a([BII)Lcom/google/android/gms/internal/recaptcha/x9;
    .locals 1

    .line 1
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p3, p2}, Lcom/google/android/gms/internal/recaptcha/z7;->h(III)V

    .line 2
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/recaptcha/m9;->b([BII)V

    return-object p0
.end method

.method protected abstract b([BII)V
.end method
