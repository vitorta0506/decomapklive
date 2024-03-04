.class final Lxh/a$j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvh/b<",
        "Ljava/util/Map<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;"
        }
    .end annotation
.end field

.field private final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field private final c:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lvh/o;Lvh/o;Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;",
            "Lvh/o<",
            "-TT;+TV;>;",
            "Lvh/o<",
            "-TT;+TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxh/a$j0;->a:Lvh/o;

    .line 3
    iput-object p2, p0, Lxh/a$j0;->b:Lvh/o;

    .line 4
    iput-object p3, p0, Lxh/a$j0;->c:Lvh/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxh/a$j0;->c:Lvh/o;

    invoke-interface {v0, p2}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lxh/a$j0;->a:Lvh/o;

    invoke-interface {v1, v0}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 4
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p1, p0, Lxh/a$j0;->b:Lvh/o;

    invoke-interface {p1, p2}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lxh/a$j0;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method
