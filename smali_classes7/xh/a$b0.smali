.class final Lxh/a$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvh/a;"
    }
.end annotation


# instance fields
.field final a:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lvh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxh/a$b0;->a:Lvh/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lxh/a$b0;->a:Lvh/g;

    invoke-static {}, Lio/reactivex/j;->a()Lio/reactivex/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lvh/g;->accept(Ljava/lang/Object;)V

    return-void
.end method
