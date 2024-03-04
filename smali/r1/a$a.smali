.class public final Lr1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lr1/e;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr1/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lr1/b;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lr1/a$a;->a:Lr1/e;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr1/a$a;->b:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lr1/a$a;->c:Lr1/b;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lr1/a$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lr1/c;)Lr1/a$a;
    .locals 1

    iget-object v0, p0, Lr1/a$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lr1/a;
    .locals 5

    new-instance v0, Lr1/a;

    iget-object v1, p0, Lr1/a$a;->a:Lr1/e;

    iget-object v2, p0, Lr1/a$a;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lr1/a$a;->c:Lr1/b;

    iget-object v4, p0, Lr1/a$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lr1/a;-><init>(Lr1/e;Ljava/util/List;Lr1/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lr1/a$a;
    .locals 0

    iput-object p1, p0, Lr1/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lr1/b;)Lr1/a$a;
    .locals 0

    iput-object p1, p0, Lr1/a$a;->c:Lr1/b;

    return-object p0
.end method

.method public e(Lr1/e;)Lr1/a$a;
    .locals 0

    iput-object p1, p0, Lr1/a$a;->a:Lr1/e;

    return-object p0
.end method
