.class Lcom/google/common/base/i$a;
.super Lcom/google/common/base/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/i;->j(Ljava/lang/String;)Lcom/google/common/base/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/common/base/i;


# direct methods
.method constructor <init>(Lcom/google/common/base/i;Lcom/google/common/base/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/i$a;->c:Lcom/google/common/base/i;

    iput-object p3, p0, Lcom/google/common/base/i$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/common/base/i;-><init>(Lcom/google/common/base/i;Lcom/google/common/base/i$a;)V

    return-void
.end method


# virtual methods
.method i(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/common/base/i$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/i$a;->c:Lcom/google/common/base/i;

    invoke-virtual {v0, p1}, Lcom/google/common/base/i;->i(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/google/common/base/i;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "already specified useForNull"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
