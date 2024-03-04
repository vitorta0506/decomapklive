.class public final Lzh/a;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/k;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/a;->a:Lio/reactivex/k;

    .line 3
    iput-object p2, p0, Lzh/a;->b:Lvh/o;

    .line 4
    iput-object p3, p0, Lzh/a;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lzh/a;->d:I

    return-void
.end method


# virtual methods
.method protected c(Lio/reactivex/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lzh/a;->a:Lio/reactivex/k;

    iget-object v1, p0, Lzh/a;->b:Lvh/o;

    invoke-static {v0, v1, p1}, Lzh/g;->a(Ljava/lang/Object;Lvh/o;Lio/reactivex/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzh/a;->a:Lio/reactivex/k;

    new-instance v1, Lzh/a$a;

    iget-object v2, p0, Lzh/a;->b:Lvh/o;

    iget-object v3, p0, Lzh/a;->c:Lio/reactivex/internal/util/ErrorMode;

    iget v4, p0, Lzh/a;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lzh/a$a;-><init>(Lio/reactivex/b;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :cond_0
    return-void
.end method
