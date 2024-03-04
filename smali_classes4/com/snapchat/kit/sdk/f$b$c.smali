.class final Lcom/snapchat/kit/sdk/f$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/kit/sdk/f$b;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/kit/sdk/f$b;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/f$b$c;->a:Lcom/snapchat/kit/sdk/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f$b$c;->a:Lcom/snapchat/kit/sdk/f$b;

    iget-object v0, v0, Lcom/snapchat/kit/sdk/f$b;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {v0}, Lcom/snapchat/kit/sdk/f;->a(Lcom/snapchat/kit/sdk/f;)Lcom/snapchat/kit/sdk/a/a;

    move-result-object v0

    sget-object v1, Lcom/snapchat/kit/sdk/a/a$a;->GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/kit/sdk/a/a;->b(Lcom/snapchat/kit/sdk/a/a$a;Z)V

    .line 2
    iget-object v0, p0, Lcom/snapchat/kit/sdk/f$b$c;->a:Lcom/snapchat/kit/sdk/f$b;

    iget-object v0, v0, Lcom/snapchat/kit/sdk/f$b;->a:Lcom/snapchat/kit/sdk/f;

    invoke-static {v0}, Lcom/snapchat/kit/sdk/f;->m(Lcom/snapchat/kit/sdk/f;)V

    return-void
.end method
