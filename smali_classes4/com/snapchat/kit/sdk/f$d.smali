.class final Lcom/snapchat/kit/sdk/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lie/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/kit/sdk/f;->l(Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lie/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/kit/sdk/f;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/f;)V
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/f$d;->a:Lcom/snapchat/kit/sdk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZILjava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/snapchat/kit/sdk/f$d;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/f;->a(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/a/a;

    move-result-object p1

    sget-object p2, Lcom/snapchat/kit/sdk/a/a$a;->FIREBASE_TOKEN_GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/snapchat/kit/sdk/a/a;->b(Lcom/snapchat/kit/sdk/a/a$a;Z)V

    .line 2
    sget-object p1, Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;->FIREBASE_CUSTOM_TOKEN_FETCH_FAILURE:Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;

    .line 3
    iput-object p3, p1, Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;->errorDescription:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/snapchat/kit/sdk/f$d;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {p2, p1}, Lcom/snapchat/kit/sdk/f;->h(Lcom/snapchat/kit/sdk/f;Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/snapchat/kit/sdk/f$d;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {p1}, Lcom/snapchat/kit/sdk/f;->a(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/a/a;

    move-result-object p1

    sget-object v0, Lcom/snapchat/kit/sdk/a/a$a;->FIREBASE_TOKEN_GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/kit/sdk/a/a;->b(Lcom/snapchat/kit/sdk/a/a$a;Z)V

    .line 4
    sget-object p1, Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;->FIREBASE_CUSTOM_TOKEN_FETCH_FAILURE:Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;

    const-string v0, "Token fetch request succeeded but response Token is Null or Empty"

    .line 5
    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;->errorDescription:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f$d;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {v0, p1}, Lcom/snapchat/kit/sdk/f;->h(Lcom/snapchat/kit/sdk/f;Lcom/snapchat/kit/sdk/core/controller/OAuthFailureReason;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f$d;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {v0}, Lcom/snapchat/kit/sdk/f;->a(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/a/a;

    move-result-object v0

    sget-object v1, Lcom/snapchat/kit/sdk/a/a$a;->FIREBASE_TOKEN_GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/kit/sdk/a/a;->b(Lcom/snapchat/kit/sdk/a/a$a;Z)V

    .line 8
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f$d;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {v0, p1}, Lcom/snapchat/kit/sdk/f;->i(Lcom/snapchat/kit/sdk/f;Ljava/lang/String;)V

    return-void
.end method
