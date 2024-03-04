.class public final synthetic Lcom/twitter/sdk/android/core/internal/oauth/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/core/internal/oauth/e;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/internal/oauth/e;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/internal/oauth/e;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/e;->a(Lcom/twitter/sdk/android/core/internal/oauth/e;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
