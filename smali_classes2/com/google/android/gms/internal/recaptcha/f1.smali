.class final Lcom/google/android/gms/internal/recaptcha/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(I)Lcom/google/android/gms/internal/recaptcha/zzpy;
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzm(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p0

    return-object p0
.end method

.method static b([B)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/qa;->d()Lcom/google/android/gms/internal/recaptcha/qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/qa;->c()Lcom/google/android/gms/internal/recaptcha/qa;

    move-result-object v0

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/internal/recaptcha/qa;->e([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
