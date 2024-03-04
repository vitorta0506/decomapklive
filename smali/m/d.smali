.class public Lm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/airbnb/lottie/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm/c;

    invoke-direct {v0}, Lm/c;-><init>()V

    sput-object v0, Lm/d;->a:Lcom/airbnb/lottie/i;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lm/d;->a:Lcom/airbnb/lottie/i;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/i;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lm/d;->a:Lcom/airbnb/lottie/i;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/i;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lm/d;->a:Lcom/airbnb/lottie/i;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lm/d;->a:Lcom/airbnb/lottie/i;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
