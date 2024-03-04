.class public final synthetic Lcom/google/android/gms/internal/recaptcha/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/recaptcha/p6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/p6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/p6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/p6;->a:Lcom/google/android/gms/internal/recaptcha/p6;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Span was closed by an invalid call to SpanEndSignal.run()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
