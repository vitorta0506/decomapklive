.class public abstract Lcom/google/android/gms/internal/recaptcha/qa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/internal/recaptcha/qa;

.field private static final b:Lcom/google/android/gms/internal/recaptcha/qa;

.field private static final c:Lcom/google/android/gms/internal/recaptcha/qa;

.field private static final d:Lcom/google/android/gms/internal/recaptcha/qa;

.field private static final e:Lcom/google/android/gms/internal/recaptcha/qa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/oa;

    const/16 v1, 0x3d

    .line 1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/oa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/qa;->a:Lcom/google/android/gms/internal/recaptcha/qa;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/oa;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 2
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/oa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/qa;->b:Lcom/google/android/gms/internal/recaptcha/qa;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/pa;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/pa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/qa;->c:Lcom/google/android/gms/internal/recaptcha/qa;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/pa;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/pa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/qa;->d:Lcom/google/android/gms/internal/recaptcha/qa;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/na;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/na;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/qa;->e:Lcom/google/android/gms/internal/recaptcha/qa;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/recaptcha/qa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/qa;->e:Lcom/google/android/gms/internal/recaptcha/qa;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract b(I)I
.end method

.method public abstract c()Lcom/google/android/gms/internal/recaptcha/qa;
.end method

.method public final e([BII)Ljava/lang/String;
    .locals 2

    .line 1
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p3, p2}, Lcom/google/android/gms/internal/recaptcha/z7;->h(III)V

    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/recaptcha/qa;->b(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/google/android/gms/internal/recaptcha/qa;->a(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/AssertionError;

    .line 6
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
