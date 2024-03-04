.class public Lcom/google/android/gms/internal/recaptcha/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x1fL
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "tiktok_systrace"

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/e2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e2;->a:Ljava/lang/String;

    return-object v0
.end method
