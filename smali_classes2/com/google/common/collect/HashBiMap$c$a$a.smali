.class Lcom/google/common/collect/HashBiMap$c$a$a;
.super Lcom/google/common/collect/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/HashBiMap$c$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$c$a;Lcom/google/common/collect/HashBiMap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->b:Lcom/google/common/collect/HashBiMap$c$a;

    invoke-direct {p0}, Lcom/google/common/collect/n;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->a:Lcom/google/common/collect/HashBiMap$b;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->a:Lcom/google/common/collect/HashBiMap$b;

    iget-object v0, v0, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->a:Lcom/google/common/collect/HashBiMap$b;

    iget-object v0, v0, Lcom/google/common/collect/h4;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->a:Lcom/google/common/collect/HashBiMap$b;

    iget-object v0, v0, Lcom/google/common/collect/h4;->a:Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->a:Lcom/google/common/collect/HashBiMap$b;

    iget v2, v2, Lcom/google/common/collect/HashBiMap$b;->c:I

    if-ne v1, v2, :cond_0

    invoke-static {p1, v0}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->b:Lcom/google/common/collect/HashBiMap$c$a;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$c$a;->f:Lcom/google/common/collect/HashBiMap$c;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v2, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$300(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "value already present: %s"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->b:Lcom/google/common/collect/HashBiMap$c$a;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$c$a;->f:Lcom/google/common/collect/HashBiMap$c;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->a:Lcom/google/common/collect/HashBiMap$b;

    invoke-static {v2, v3}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$b;)V

    .line 6
    new-instance v2, Lcom/google/common/collect/HashBiMap$b;

    iget-object v3, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->a:Lcom/google/common/collect/HashBiMap$b;

    iget-object v4, v3, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    iget v3, v3, Lcom/google/common/collect/HashBiMap$b;->d:I

    invoke-direct {v2, p1, v1, v4, v3}, Lcom/google/common/collect/HashBiMap$b;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 7
    iput-object v2, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->a:Lcom/google/common/collect/HashBiMap$b;

    .line 8
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->b:Lcom/google/common/collect/HashBiMap$c$a;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$c$a;->f:Lcom/google/common/collect/HashBiMap$c;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    const/4 v1, 0x0

    invoke-static {p1, v2, v1}, Lcom/google/common/collect/HashBiMap;->access$500(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$b;Lcom/google/common/collect/HashBiMap$b;)V

    .line 9
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap$c$a$a;->b:Lcom/google/common/collect/HashBiMap$c$a;

    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$c$a;->f:Lcom/google/common/collect/HashBiMap$c;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)I

    move-result v1

    iput v1, p1, Lcom/google/common/collect/HashBiMap$e;->c:I

    return-object v0
.end method
