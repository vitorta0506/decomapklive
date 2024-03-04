.class final Lcom/google/api/client/http/w$a;
.super Loh/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Loh/a$c<",
        "Lcom/google/api/client/http/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loh/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/google/api/client/http/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/http/w$a;->b(Lcom/google/api/client/http/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/api/client/http/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/google/api/client/http/j;->r(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/j;

    return-void
.end method
