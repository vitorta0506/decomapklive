.class Lcom/google/common/base/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/t$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/t;->h(Ljava/lang/String;)Lcom/google/common/base/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/t$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/t;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/t$b;->b(Lcom/google/common/base/t;Ljava/lang/CharSequence;)Lcom/google/common/base/t$d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/base/t;Ljava/lang/CharSequence;)Lcom/google/common/base/t$d;
    .locals 1

    new-instance v0, Lcom/google/common/base/t$b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/t$b$a;-><init>(Lcom/google/common/base/t$b;Lcom/google/common/base/t;Ljava/lang/CharSequence;)V

    return-object v0
.end method
