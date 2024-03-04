.class final Lxh/a$i0;
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
    name = "i0"
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
        "TK;TV;>;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field private final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lvh/o;Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+TV;>;",
            "Lvh/o<",
            "-TT;+TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxh/a$i0;->a:Lvh/o;

    .line 3
    iput-object p2, p0, Lxh/a$i0;->b:Lvh/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxh/a$i0;->b:Lvh/o;

    invoke-interface {v0, p2}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lxh/a$i0;->a:Lvh/o;

    invoke-interface {v1, p2}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lxh/a$i0;->a(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method
