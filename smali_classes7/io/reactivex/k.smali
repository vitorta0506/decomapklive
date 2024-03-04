.class public abstract Lio/reactivex/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/p<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/reactivex/internal/operators/observable/h;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ambArray([Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/k;->wrap(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/observable/h;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static bufferSize()I
    .locals 1

    invoke-static {}, Lio/reactivex/e;->b()I

    move-result v0

    return v0
.end method

.method public static combineLatest(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/n;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lio/reactivex/p<",
            "+TT6;>;",
            "Lio/reactivex/p<",
            "+TT7;>;",
            "Lio/reactivex/p<",
            "+TT8;>;",
            "Lio/reactivex/p<",
            "+TT9;>;",
            "Lvh/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 56
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 57
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 58
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 59
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 60
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 61
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 62
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 63
    invoke-static {p7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 64
    invoke-static {p8, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-static {p9}, Lxh/a;->C(Lvh/n;)Lvh/o;

    move-result-object p9

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v0, v1}, Lio/reactivex/k;->combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/m;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lio/reactivex/p<",
            "+TT6;>;",
            "Lio/reactivex/p<",
            "+TT7;>;",
            "Lio/reactivex/p<",
            "+TT8;>;",
            "Lvh/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 47
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 48
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 49
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 50
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 51
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 52
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 53
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 54
    invoke-static {p7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    invoke-static {p8}, Lxh/a;->B(Lvh/m;)Lvh/o;

    move-result-object p8

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v0, v1}, Lio/reactivex/k;->combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/l;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lio/reactivex/p<",
            "+TT6;>;",
            "Lio/reactivex/p<",
            "+TT7;>;",
            "Lvh/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 39
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 40
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 41
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 42
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 43
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 44
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 45
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-static {p7}, Lxh/a;->A(Lvh/l;)Lvh/o;

    move-result-object p7

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v0, v1}, Lio/reactivex/k;->combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/k;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lio/reactivex/p<",
            "+TT6;>;",
            "Lvh/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 32
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 33
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 34
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 35
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 36
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 37
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    invoke-static {p6}, Lxh/a;->z(Lvh/k;)Lvh/o;

    move-result-object p6

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v0, v1}, Lio/reactivex/k;->combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/j;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lvh/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 26
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 27
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 28
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 29
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 30
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    invoke-static {p5}, Lxh/a;->y(Lvh/j;)Lvh/o;

    move-result-object p5

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v0, v1}, Lio/reactivex/k;->combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/i;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lvh/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 21
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 22
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 23
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 24
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    invoke-static {p4}, Lxh/a;->x(Lvh/i;)Lvh/o;

    move-result-object p4

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v0, v1}, Lio/reactivex/k;->combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/h;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lvh/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 17
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 18
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 19
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-static {p3}, Lxh/a;->w(Lvh/h;)Lvh/o;

    move-result-object p3

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v0, v1}, Lio/reactivex/k;->combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Lio/reactivex/p;Lio/reactivex/p;Lvh/c;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lvh/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 14
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 15
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {p2}, Lxh/a;->v(Lvh/c;)Lvh/o;

    move-result-object p2

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v0, v1}, Lio/reactivex/k;->combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/k;->combineLatest(Ljava/lang/Iterable;Lvh/o;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest(Ljava/lang/Iterable;Lvh/o;I)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 3
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 6
    new-instance p2, Lio/reactivex/internal/operators/observable/t;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/t;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;IZ)V

    invoke-static {p2}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs combineLatest(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p0, p1}, Lio/reactivex/k;->combineLatest([Lio/reactivex/p;Lvh/o;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest([Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/k;->combineLatest([Lio/reactivex/p;Lvh/o;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatest([Lio/reactivex/p;Lvh/o;I)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 8
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    array-length v0, p0

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    .line 11
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 12
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 13
    new-instance p2, Lio/reactivex/internal/operators/observable/t;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/t;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;IZ)V

    invoke-static {p2}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError(Ljava/lang/Iterable;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/k;->combineLatestDelayError(Ljava/lang/Iterable;Lvh/o;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError(Ljava/lang/Iterable;Lvh/o;I)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 9
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 10
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 11
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    .line 12
    new-instance p2, Lio/reactivex/internal/operators/observable/t;

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/t;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;IZ)V

    invoke-static {p2}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs combineLatestDelayError(Lvh/o;I[Lio/reactivex/p;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2, p0, p1}, Lio/reactivex/k;->combineLatestDelayError([Lio/reactivex/p;Lvh/o;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError([Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lio/reactivex/k;->combineLatestDelayError([Lio/reactivex/p;Lvh/o;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static combineLatestDelayError([Lio/reactivex/p;Lvh/o;I)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "combiner is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    array-length v0, p0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    :cond_0
    shl-int/lit8 v4, p2, 0x1

    .line 7
    new-instance p2, Lio/reactivex/internal/operators/observable/t;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/t;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;IZ)V

    invoke-static {p2}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/k;->concat(Lio/reactivex/p;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/p;I)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 4
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 5
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/u;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/observable/u;-><init>(Lio/reactivex/p;Lvh/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 7
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 8
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 9
    invoke-static {v0}, Lio/reactivex/k;->concatArray([Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 10
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 11
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 12
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 13
    invoke-static {v0}, Lio/reactivex/k;->concatArray([Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 14
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 15
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 16
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 17
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 18
    invoke-static {v0}, Lio/reactivex/k;->concatArray([Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Ljava/lang/Iterable;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/k;->concatMapDelayError(Lvh/o;IZ)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lio/reactivex/p;)Lio/reactivex/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/k;->wrap(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/u;

    invoke-static {p0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v2

    sget-object v3, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/internal/operators/observable/u;-><init>(Lio/reactivex/p;Lvh/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayDelayError([Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/k;->wrap(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/k;->concatDelayError(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager(II[Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p0, p1, v1}, Lio/reactivex/k;->concatMapEagerDelayError(Lvh/o;IIZ)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEager([Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    invoke-static {v0, v1, p0}, Lio/reactivex/k;->concatArrayEager(II[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEagerDelayError(II[Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, p1, v1}, Lio/reactivex/k;->concatMapEagerDelayError(Lvh/o;IIZ)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArrayEagerDelayError([Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    invoke-static {v0, v1, p0}, Lio/reactivex/k;->concatArrayEagerDelayError(II[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/k;->concatDelayError(Lio/reactivex/p;IZ)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Lio/reactivex/p;IZ)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;IZ)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 4
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch is null"

    .line 5
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/u;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, v1, p1, p2}, Lio/reactivex/internal/operators/observable/u;-><init>(Lio/reactivex/p;Lvh/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concatDelayError(Ljava/lang/Iterable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/k;->concatDelayError(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/k;->concatEager(Lio/reactivex/p;II)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Lio/reactivex/p;II)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;II)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lio/reactivex/k;->wrap(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/reactivex/k;->concatMapEager(Lvh/o;II)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Ljava/lang/Iterable;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/reactivex/k;->concatEager(Ljava/lang/Iterable;II)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static concatEager(Ljava/lang/Iterable;II)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;II)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lio/reactivex/k;->concatMapEagerDelayError(Lvh/o;IIZ)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/reactivex/n;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/n<",
            "TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/b0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/b0;-><init>(Lio/reactivex/n;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/e0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/e0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method private doOnEach(Lvh/g;Lvh/g;Lvh/a;Lvh/a;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lvh/a;",
            "Lvh/a;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 4
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/n0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/n0;-><init>(Lio/reactivex/p;Lvh/g;Lvh/g;Lvh/a;Lvh/a;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public static empty()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/operators/observable/s0;->a:Lio/reactivex/k;

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    .line 3
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Lxh/a;->k(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/k;->error(Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/t0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/t0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs fromArray([Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/b1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/b1;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/c1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/c1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/d1;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lio/reactivex/internal/operators/observable/d1;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    .line 3
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/d1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/d1;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 6
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/k;->fromFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p4}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 9
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {p0}, Lio/reactivex/k;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/k;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/e1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/e1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static fromPublisher(Lil/a;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lil/a<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/f1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/f1;-><init>(Lil/a;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/util/concurrent/Callable;Lvh/b;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lvh/b<",
            "TS;",
            "Lio/reactivex/d<",
            "TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 5
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->l(Lvh/b;)Lvh/c;

    move-result-object p1

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/k;->generate(Ljava/util/concurrent/Callable;Lvh/c;Lvh/g;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/util/concurrent/Callable;Lvh/b;Lvh/g;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lvh/b<",
            "TS;",
            "Lio/reactivex/d<",
            "TT;>;>;",
            "Lvh/g<",
            "-TS;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 7
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->l(Lvh/b;)Lvh/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/reactivex/k;->generate(Ljava/util/concurrent/Callable;Lvh/c;Lvh/g;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/util/concurrent/Callable;Lvh/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lvh/c<",
            "TS;",
            "Lio/reactivex/d<",
            "TT;>;TS;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/reactivex/k;->generate(Ljava/util/concurrent/Callable;Lvh/c;Lvh/g;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Ljava/util/concurrent/Callable;Lvh/c;Lvh/g;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lvh/c<",
            "TS;",
            "Lio/reactivex/d<",
            "TT;>;TS;>;",
            "Lvh/g<",
            "-TS;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialState is null"

    .line 10
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    .line 11
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    .line 12
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lio/reactivex/internal/operators/observable/h1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/h1;-><init>(Ljava/util/concurrent/Callable;Lvh/c;Lvh/g;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static generate(Lvh/g;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/g<",
            "Lio/reactivex/d<",
            "TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lxh/a;->s()Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/m1;->m(Lvh/g;)Lvh/c;

    move-result-object p0

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v1

    .line 4
    invoke-static {v0, p0, v1}, Lio/reactivex/k;->generate(Ljava/util/concurrent/Callable;Lvh/c;Lvh/g;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/reactivex/k;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/n1;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/n1;-><init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lio/reactivex/k;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static interval(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lio/reactivex/k;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v9

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lio/reactivex/k;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public static intervalRange(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    if-nez v6, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    add-long v6, p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "unit is null"

    .line 4
    invoke-static {v9, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {v10, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v11, Lio/reactivex/internal/operators/observable/o1;

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object v0, v11

    move-wide/from16 v1, p0

    move-wide v3, v6

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lio/reactivex/internal/operators/observable/o1;-><init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-static {v11}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0

    .line 7
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/q1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/q1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 3
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 5
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 6
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 7
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 8
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 9
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 10
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 11
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 12
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 13
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 14
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 15
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 16
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 17
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 18
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 19
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    .line 20
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 21
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 22
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 23
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 24
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 25
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 26
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    .line 27
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 28
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 29
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 30
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 31
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 32
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 33
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 34
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    .line 35
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 36
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 37
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 38
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 39
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 40
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 41
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 42
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 43
    invoke-static {p7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    .line 44
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 45
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 46
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 47
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 48
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 49
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 50
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 51
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 52
    invoke-static {p7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    .line 53
    invoke-static {p8, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    .line 54
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    .line 55
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    .line 56
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    .line 57
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    .line 58
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    .line 59
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    .line 60
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    .line 61
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    .line 62
    invoke-static {p7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    .line 63
    invoke-static {p8, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item10 is null"

    .line 64
    invoke-static {p9, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    const/16 p0, 0x9

    aput-object p9, v0, p0

    .line 65
    invoke-static {v0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 4
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/v0;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v3

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/v0;-><init>(Lio/reactivex/p;Lvh/o;ZII)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/p;I)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 6
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 7
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 8
    new-instance v0, Lio/reactivex/internal/operators/observable/v0;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v3

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/v0;-><init>(Lio/reactivex/p;Lvh/o;ZII)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 9
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 10
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 11
    invoke-static {v1}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 12
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 13
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 14
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 15
    invoke-static {v1}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 16
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 17
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 18
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 19
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    .line 20
    invoke-static {v1}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->flatMap(Lvh/o;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/k;->flatMap(Lvh/o;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Iterable;II)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;II)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/k;->flatMap(Lvh/o;ZII)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray(II[Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/k;->flatMap(Lvh/o;ZII)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray([Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, Lio/reactivex/k;->flatMap(Lvh/o;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError(II[Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, Lio/reactivex/k;->flatMap(Lvh/o;ZII)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArrayDelayError([Lio/reactivex/p;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    array-length p0, p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 4
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/v0;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v3

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v4, 0x1

    const v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/v0;-><init>(Lio/reactivex/p;Lvh/o;ZII)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/p;I)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 6
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 7
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 8
    new-instance v0, Lio/reactivex/internal/operators/observable/v0;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v3

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/v0;-><init>(Lio/reactivex/p;Lvh/o;ZII)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 9
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 10
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 11
    invoke-static {v1}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 12
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 13
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 14
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    .line 15
    invoke-static {v1}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 16
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 17
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 18
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 19
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    .line 20
    invoke-static {v1}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/k;->flatMap(Lvh/o;Z)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;I)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;II)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;II)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/reactivex/k;->flatMap(Lvh/o;ZII)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static never()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/operators/observable/a2;->a:Lio/reactivex/k;

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Lio/reactivex/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/k<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/i2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/i2;-><init>(II)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rangeLong(JJ)Lio/reactivex/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    .line 1
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long v2, p2, v2

    add-long/2addr v2, p0

    cmp-long v4, p0, v0

    if-lez v4, :cond_3

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_3
    :goto_0
    new-instance v0, Lio/reactivex/internal/operators/observable/j2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/j2;-><init>(JJ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 5
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count >= 0 required but it was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sequenceEqual(Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lxh/b;->d()Lvh/d;

    move-result-object v0

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/k;->sequenceEqual(Lio/reactivex/p;Lio/reactivex/p;Lvh/d;I)Lio/reactivex/t;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Lio/reactivex/p;Lio/reactivex/p;I)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;I)",
            "Lio/reactivex/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lxh/b;->d()Lvh/d;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lio/reactivex/k;->sequenceEqual(Lio/reactivex/p;Lio/reactivex/p;Lvh/d;I)Lio/reactivex/t;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Lio/reactivex/p;Lio/reactivex/p;Lvh/d;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lvh/d<",
            "-TT;-TT;>;)",
            "Lio/reactivex/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/k;->sequenceEqual(Lio/reactivex/p;Lio/reactivex/p;Lvh/d;I)Lio/reactivex/t;

    move-result-object p0

    return-object p0
.end method

.method public static sequenceEqual(Lio/reactivex/p;Lio/reactivex/p;Lvh/d;I)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lvh/d<",
            "-TT;-TT;>;I)",
            "Lio/reactivex/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 3
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    .line 5
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 6
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 7
    new-instance v0, Lio/reactivex/internal/operators/observable/a3;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/a3;-><init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/d;I)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNext(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/k;->switchOnNext(Lio/reactivex/p;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNext(Lio/reactivex/p;I)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/l3;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/observable/l3;-><init>(Lio/reactivex/p;Lvh/o;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNextDelayError(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-static {p0, v0}, Lio/reactivex/k;->switchOnNextDelayError(Lio/reactivex/p;I)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static switchOnNextDelayError(Lio/reactivex/p;I)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/l3;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lio/reactivex/internal/operators/observable/l3;-><init>(Lio/reactivex/p;Lvh/o;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method private timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/p;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeUnit is null"

    .line 1
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/x3;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/x3;-><init>(Lio/reactivex/k;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method private timeout0(Lio/reactivex/p;Lvh/o;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TV;>;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/w3;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/w3;-><init>(Lio/reactivex/k;Lio/reactivex/p;Lvh/o;Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/k;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/y3;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/y3;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static unsafeCreate(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/k;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/g1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/g1;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Observable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lvh/o;Lvh/g;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lvh/o<",
            "-TD;+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/g<",
            "-TD;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lio/reactivex/k;->using(Ljava/util/concurrent/Callable;Lvh/o;Lvh/g;Z)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static using(Ljava/util/concurrent/Callable;Lvh/o;Lvh/g;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "Lvh/o<",
            "-TD;+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/g<",
            "-TD;>;Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    .line 2
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/c4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/c4;-><init>(Ljava/util/concurrent/Callable;Lvh/o;Lvh/g;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/reactivex/k;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lio/reactivex/k;

    invoke-static {p0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/g1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/g1;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/n;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lio/reactivex/p<",
            "+TT6;>;",
            "Lio/reactivex/p<",
            "+TT7;>;",
            "Lio/reactivex/p<",
            "+TT8;>;",
            "Lio/reactivex/p<",
            "+TT9;>;",
            "Lvh/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 57
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 58
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 59
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 60
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 61
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 62
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 63
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 64
    invoke-static {p7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    .line 65
    invoke-static {p8, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    invoke-static {p9}, Lxh/a;->C(Lvh/n;)Lvh/o;

    move-result-object p9

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v2, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/m;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lio/reactivex/p<",
            "+TT6;>;",
            "Lio/reactivex/p<",
            "+TT7;>;",
            "Lio/reactivex/p<",
            "+TT8;>;",
            "Lvh/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 48
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 49
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 50
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 51
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 52
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 53
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 54
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    .line 55
    invoke-static {p7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    invoke-static {p8}, Lxh/a;->B(Lvh/m;)Lvh/o;

    move-result-object p8

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v2, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/l;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lio/reactivex/p<",
            "+TT6;>;",
            "Lio/reactivex/p<",
            "+TT7;>;",
            "Lvh/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 40
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 41
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 42
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 43
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 44
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 45
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    .line 46
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    invoke-static {p7}, Lxh/a;->A(Lvh/l;)Lvh/o;

    move-result-object p7

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v2, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/k;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lio/reactivex/p<",
            "+TT6;>;",
            "Lvh/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 33
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 34
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 35
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 36
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 37
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    .line 38
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    invoke-static {p6}, Lxh/a;->z(Lvh/k;)Lvh/o;

    move-result-object p6

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v2, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/j;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lio/reactivex/p<",
            "+TT5;>;",
            "Lvh/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 27
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 28
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 29
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 30
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    .line 31
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    invoke-static {p5}, Lxh/a;->y(Lvh/j;)Lvh/o;

    move-result-object p5

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v2, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/i;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lio/reactivex/p<",
            "+TT4;>;",
            "Lvh/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 22
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 23
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 24
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    .line 25
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-static {p4}, Lxh/a;->x(Lvh/i;)Lvh/o;

    move-result-object p4

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/h;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lio/reactivex/p<",
            "+TT3;>;",
            "Lvh/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 18
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 19
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 20
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-static {p3}, Lxh/a;->w(Lvh/h;)Lvh/o;

    move-result-object p3

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lvh/c;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lvh/c<",
            "-TT1;-TT2;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 9
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 10
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Lxh/a;->v(Lvh/c;)Lvh/o;

    move-result-object p2

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lvh/c;Z)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lvh/c<",
            "-TT1;-TT2;+TR;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 12
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 13
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-static {p2}, Lxh/a;->v(Lvh/c;)Lvh/o;

    move-result-object p2

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lio/reactivex/p;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lio/reactivex/p;Lvh/c;ZI)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TT1;>;",
            "Lio/reactivex/p<",
            "+TT2;>;",
            "Lvh/c<",
            "-TT1;-TT2;+TR;>;ZI)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 15
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 16
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Lxh/a;->v(Lvh/c;)Lvh/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, Lio/reactivex/k;->zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 5
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/z3;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/observable/z3;-><init>(Lio/reactivex/p;I)V

    .line 7
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->n(Lvh/o;)Lvh/o;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/k;->flatMap(Lvh/o;)Lio/reactivex/k;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zip(Ljava/lang/Iterable;Lvh/o;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/k4;

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/k4;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zipArray(Lvh/o;ZI[Lio/reactivex/p;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI[",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 1
    array-length v0, p3

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    .line 3
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/k4;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/k4;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method

.method public static zipIterable(Ljava/lang/Iterable;Lvh/o;ZI)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    .line 2
    invoke-static {p0, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/k4;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/k4;-><init>([Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final all(Lvh/q;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;)",
            "Lio/reactivex/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/g;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/g;-><init>(Lio/reactivex/p;Lvh/q;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final ambWith(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lio/reactivex/k;->ambArray([Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final any(Lvh/q;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;)",
            "Lio/reactivex/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/j;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/j;-><init>(Lio/reactivex/p;Lvh/q;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final as(Lio/reactivex/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/l<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/l;

    invoke-interface {p1, p0}, Lio/reactivex/l;->a(Lio/reactivex/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blockingFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/d;

    invoke-direct {v0}, Lio/reactivex/internal/observers/d;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/observers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 5
    new-instance v0, Lio/reactivex/internal/observers/d;

    invoke-direct {v0}, Lio/reactivex/internal/observers/d;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 7
    invoke-virtual {v0}, Lio/reactivex/internal/observers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final blockingForEach(Lvh/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/k;->blockingIterable()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lvh/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    check-cast v0, Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 6
    invoke-static {p1}, Lio/reactivex/internal/util/f;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final blockingIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->blockingIterable(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final blockingIterable(I)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/b;-><init>(Lio/reactivex/p;I)V

    return-object v0
.end method

.method public final blockingLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/observers/e;

    invoke-direct {v0}, Lio/reactivex/internal/observers/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/observers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingLast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 5
    new-instance v0, Lio/reactivex/internal/observers/e;

    invoke-direct {v0}, Lio/reactivex/internal/observers/e;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 7
    invoke-virtual {v0}, Lio/reactivex/internal/observers/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final blockingLatest()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/c;-><init>(Lio/reactivex/p;)V

    return-object v0
.end method

.method public final blockingMostRecent(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/d;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/d;-><init>(Lio/reactivex/p;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final blockingNext()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/e;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/e;-><init>(Lio/reactivex/p;)V

    return-object v0
.end method

.method public final blockingSingle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/k;->singleElement()Lio/reactivex/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/g;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final blockingSingle(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lio/reactivex/k;->single(Ljava/lang/Object;)Lio/reactivex/t;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/t;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blockingSubscribe()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/k;->a(Lio/reactivex/p;)V

    return-void
.end method

.method public final blockingSubscribe(Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/observable/k;->b(Lio/reactivex/p;Lio/reactivex/r;)V

    return-void
.end method

.method public final blockingSubscribe(Lvh/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lxh/a;->f:Lvh/g;

    sget-object v1, Lxh/a;->c:Lvh/a;

    invoke-static {p0, p1, v0, v1}, Lio/reactivex/internal/operators/observable/k;->c(Lio/reactivex/p;Lvh/g;Lvh/g;Lvh/a;)V

    return-void
.end method

.method public final blockingSubscribe(Lvh/g;Lvh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lxh/a;->c:Lvh/a;

    invoke-static {p0, p1, p2, v0}, Lio/reactivex/internal/operators/observable/k;->c(Lio/reactivex/p;Lvh/g;Lvh/g;Lvh/a;)V

    return-void
.end method

.method public final blockingSubscribe(Lvh/g;Lvh/g;Lvh/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lvh/a;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/k;->c(Lio/reactivex/p;Lvh/g;Lvh/g;Lvh/a;)V

    return-void
.end method

.method public final buffer(I)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lio/reactivex/k;->buffer(II)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(II)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->buffer(IILjava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(IILjava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "count"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "skip"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    .line 5
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/l;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/l;-><init>(Lio/reactivex/p;IILjava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(ILjava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p1, p2}, Lio/reactivex/k;->buffer(IILjava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 8
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v6

    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->buffer(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->buffer(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 10
    invoke-static {v7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 11
    invoke-static {v8, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p7

    .line 12
    invoke-static {v9, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lio/reactivex/internal/operators/observable/p;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, Lio/reactivex/internal/operators/observable/p;-><init>(Lio/reactivex/p;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 14
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;I)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 15
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v6

    const v5, 0x7fffffff

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ILjava/util/concurrent/Callable;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "I)",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 16
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ILjava/util/concurrent/Callable;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ILjava/util/concurrent/Callable;Z)Lio/reactivex/k;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;Z)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object v7, p3

    .line 17
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 18
    invoke-static {v8, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p6

    .line 19
    invoke-static {v9, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move/from16 v10, p5

    .line 20
    invoke-static {v10, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 21
    new-instance v0, Lio/reactivex/internal/operators/observable/p;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lio/reactivex/internal/operators/observable/p;-><init>(Lio/reactivex/p;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TB;>;)",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 28
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->buffer(Lio/reactivex/p;Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Lio/reactivex/p;I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TB;>;I)",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    .line 29
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 30
    invoke-static {p2}, Lxh/a;->e(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/k;->buffer(Lio/reactivex/p;Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Lio/reactivex/p;Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lio/reactivex/p<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    .line 31
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 32
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lio/reactivex/internal/operators/observable/o;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/o;-><init>(Lio/reactivex/p;Lio/reactivex/p;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TTOpening;>;",
            "Lvh/o<",
            "-TTOpening;+",
            "Lio/reactivex/p<",
            "+TTClosing;>;>;)",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->buffer(Lio/reactivex/p;Lvh/o;Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Lio/reactivex/p;Lvh/o;Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lio/reactivex/p<",
            "+TTOpening;>;",
            "Lvh/o<",
            "-TTOpening;+",
            "Lio/reactivex/p<",
            "+TTClosing;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    .line 24
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 25
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 26
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lio/reactivex/internal/operators/observable/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/m;-><init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "TB;>;>;)",
            "Lio/reactivex/k<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->buffer(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final buffer(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundarySupplier is null"

    .line 35
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    .line 36
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lio/reactivex/internal/operators/observable/n;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/n;-><init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final cache()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lio/reactivex/k;->cacheWithInitialCapacity(I)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final cacheWithInitialCapacity(I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/q;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/q;-><init>(Lio/reactivex/k;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final cast(Ljava/lang/Class;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lxh/a;->d(Ljava/lang/Class;)Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Ljava/util/concurrent/Callable;Lvh/b;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lvh/b<",
            "-TU;-TT;>;)",
            "Lio/reactivex/t<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValueSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/s;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/s;-><init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;Lvh/b;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final collectInto(Ljava/lang/Object;Lvh/b;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lvh/b<",
            "-TU;-TT;>;)",
            "Lio/reactivex/t<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lxh/a;->k(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/k;->collect(Ljava/util/concurrent/Callable;Lvh/b;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final compose(Lio/reactivex/q;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/q<",
            "-TT;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/q;

    invoke-interface {p1, p0}, Lio/reactivex/q;->a(Lio/reactivex/k;)Lio/reactivex/p;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/k;->wrap(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->concatMap(Lvh/o;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMap(Lvh/o;I)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Lyh/e;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Lyh/e;

    invoke-interface {p2}, Lyh/e;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/u;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/observable/u;-><init>(Lio/reactivex/p;Lvh/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletable(Lvh/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->concatMapCompletable(Lvh/o;I)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletable(Lvh/o;I)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;I)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lzh/a;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lzh/a;-><init>(Lio/reactivex/k;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lci/a;->l(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Lvh/o;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/k;->concatMapCompletableDelayError(Lvh/o;ZI)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Lvh/o;Z)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;Z)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->concatMapCompletableDelayError(Lvh/o;ZI)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapCompletableDelayError(Lvh/o;ZI)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;ZI)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lzh/a;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lzh/a;-><init>(Lio/reactivex/k;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lci/a;->l(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/k;->concatMapDelayError(Lvh/o;IZ)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapDelayError(Lvh/o;IZ)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;IZ)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Lyh/e;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Lyh/e;

    invoke-interface {p2}, Lyh/e;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/u;

    if-eqz p3, :cond_2

    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_2
    sget-object p3, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/u;-><init>(Lio/reactivex/p;Lvh/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEager(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/k;->concatMapEager(Lvh/o;II)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEager(Lvh/o;II)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;II)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/v;

    sget-object v4, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/v;-><init>(Lio/reactivex/p;Lvh/o;Lio/reactivex/internal/util/ErrorMode;II)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEagerDelayError(Lvh/o;IIZ)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;IIZ)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "prefetch"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/v;

    if-eqz p4, :cond_0

    sget-object p4, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p4, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    move-object v4, p4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/v;-><init>(Lio/reactivex/p;Lvh/o;Lio/reactivex/internal/util/ErrorMode;II)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapEagerDelayError(Lvh/o;Z)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v1, v0, p2}, Lio/reactivex/k;->concatMapEagerDelayError(Lvh/o;IIZ)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapIterable(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/a1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/a1;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapIterable(Lvh/o;I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 5
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->a(Lvh/o;)Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/k;->concatMap(Lvh/o;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybe(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->concatMapMaybe(Lvh/o;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybe(Lvh/o;I)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lzh/b;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lzh/b;-><init>(Lio/reactivex/k;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/k;->concatMapMaybeDelayError(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Lvh/o;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->concatMapMaybeDelayError(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapMaybeDelayError(Lvh/o;ZI)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lzh/b;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lzh/b;-><init>(Lio/reactivex/k;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingle(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->concatMapSingle(Lvh/o;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingle(Lvh/o;I)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    new-instance v0, Lzh/c;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v0, p0, p1, v1, p2}, Lzh/c;-><init>(Lio/reactivex/k;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/k;->concatMapSingleDelayError(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Lvh/o;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->concatMapSingleDelayError(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatMapSingleDelayError(Lvh/o;ZI)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lzh/c;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->END:Lio/reactivex/internal/util/ErrorMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lzh/c;-><init>(Lio/reactivex/k;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/c;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lio/reactivex/internal/operators/observable/w;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/w;-><init>(Lio/reactivex/k;Lio/reactivex/c;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/i;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/i<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 5
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/x;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/x;-><init>(Lio/reactivex/k;Lio/reactivex/i;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/k;->concat(Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final concatWith(Lio/reactivex/v;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/v<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/y;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/y;-><init>(Lio/reactivex/k;Lio/reactivex/v;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "element is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lxh/a;->h(Ljava/lang/Object;)Lvh/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->any(Lvh/q;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final count()Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/t<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/a0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/a0;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->debounce(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/d0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/d0;-><init>(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final debounce(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TU;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debounceSelector is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/c0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/c0;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->switchIfEmpty(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 6
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 7
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lio/reactivex/internal/operators/observable/f0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/f0;-><init>(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delay(Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TV;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lio/reactivex/k;->delaySubscription(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/k;->delay(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delay(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TU;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemDelay is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->c(Lvh/o;)Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->flatMap(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/k;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->delaySubscription(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final delaySubscription(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/g0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/g0;-><init>(Lio/reactivex/p;Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final dematerialize()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/k<",
            "TT2;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/h0;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/observable/h0;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final dematerialize(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;",
            "Lio/reactivex/j<",
            "TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/h0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/h0;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final distinct()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-static {}, Lxh/a;->f()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/k;->distinct(Lvh/o;Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final distinct(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;TK;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lxh/a;->f()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->distinct(Lvh/o;Ljava/util/concurrent/Callable;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final distinct(Lvh/o;Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;TK;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/j0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/j0;-><init>(Lio/reactivex/p;Lvh/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final distinctUntilChanged()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->distinctUntilChanged(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Lvh/d;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/d<",
            "-TT;-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparer is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/k0;

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lio/reactivex/internal/operators/observable/k0;-><init>(Lio/reactivex/p;Lvh/o;Lvh/d;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final distinctUntilChanged(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;TK;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/k0;

    invoke-static {}, Lxh/b;->d()Lvh/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/observable/k0;-><init>(Lio/reactivex/p;Lvh/o;Lvh/d;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterNext(Lvh/g;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/l0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/l0;-><init>(Lio/reactivex/p;Lvh/g;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doAfterTerminate(Lvh/a;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/a;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v1

    sget-object v2, Lxh/a;->c:Lvh/a;

    invoke-direct {p0, v0, v1, v2, p1}, Lio/reactivex/k;->doOnEach(Lvh/g;Lvh/g;Lvh/a;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doFinally(Lvh/a;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/a;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/m0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/m0;-><init>(Lio/reactivex/p;Lvh/a;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnComplete(Lvh/a;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/a;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v1

    sget-object v2, Lxh/a;->c:Lvh/a;

    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/k;->doOnEach(Lvh/g;Lvh/g;Lvh/a;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnDispose(Lvh/a;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/a;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/k;->doOnLifecycle(Lvh/g;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEach(Lio/reactivex/r;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 11
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->f(Lio/reactivex/r;)Lvh/g;

    move-result-object v0

    .line 13
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->e(Lio/reactivex/r;)Lvh/g;

    move-result-object v1

    .line 14
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->d(Lio/reactivex/r;)Lvh/a;

    move-result-object p1

    sget-object v2, Lxh/a;->c:Lvh/a;

    .line 15
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/k;->doOnEach(Lvh/g;Lvh/g;Lvh/a;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnEach(Lvh/g;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNotification is null"

    .line 6
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Lxh/a;->r(Lvh/g;)Lvh/g;

    move-result-object v0

    .line 8
    invoke-static {p1}, Lxh/a;->q(Lvh/g;)Lvh/g;

    move-result-object v1

    .line 9
    invoke-static {p1}, Lxh/a;->p(Lvh/g;)Lvh/a;

    move-result-object p1

    sget-object v2, Lxh/a;->c:Lvh/a;

    .line 10
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/k;->doOnEach(Lvh/g;Lvh/g;Lvh/a;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnError(Lvh/g;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    sget-object v1, Lxh/a;->c:Lvh/a;

    invoke-direct {p0, v0, p1, v1, v1}, Lio/reactivex/k;->doOnEach(Lvh/g;Lvh/g;Lvh/a;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnLifecycle(Lvh/g;Lvh/a;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;",
            "Lvh/a;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/o0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/o0;-><init>(Lio/reactivex/k;Lvh/g;Lvh/a;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnNext(Lvh/g;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    sget-object v1, Lxh/a;->c:Lvh/a;

    invoke-direct {p0, p1, v0, v1, v1}, Lio/reactivex/k;->doOnEach(Lvh/g;Lvh/g;Lvh/a;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnSubscribe(Lvh/g;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lxh/a;->c:Lvh/a;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->doOnLifecycle(Lvh/g;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final doOnTerminate(Lvh/a;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/a;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lxh/a;->a(Lvh/a;)Lvh/g;

    move-result-object v1

    sget-object v2, Lxh/a;->c:Lvh/a;

    .line 4
    invoke-direct {p0, v0, v1, p1, v2}, Lio/reactivex/k;->doOnEach(Lvh/g;Lvh/g;Lvh/a;Lvh/a;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final elementAt(J)Lio/reactivex/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/g<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/q0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/q0;-><init>(Lio/reactivex/p;J)V

    invoke-static {v0}, Lci/a;->n(Lio/reactivex/g;)Lio/reactivex/g;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final elementAt(JLjava/lang/Object;)Lio/reactivex/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "defaultItem is null"

    .line 3
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/r0;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/r0;-><init>(Lio/reactivex/p;JLjava/lang/Object;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final elementAtOrError(J)Lio/reactivex/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/observable/r0;-><init>(Lio/reactivex/p;JLjava/lang/Object;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filter(Lvh/q;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/u0;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/u0;-><init>(Lio/reactivex/p;Lvh/q;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final first(Ljava/lang/Object;)Lio/reactivex/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/k;->elementAt(JLjava/lang/Object;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final firstElement()Lio/reactivex/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/g<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/k;->elementAt(J)Lio/reactivex/g;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrError()Lio/reactivex/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/k;->elementAtOrError(J)Lio/reactivex/t;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->flatMap(Lvh/o;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;I)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZII)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;Lvh/c;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TU;>;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v4

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->flatMap(Lvh/o;Lvh/c;ZII)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;Lvh/c;I)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TU;>;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->flatMap(Lvh/o;Lvh/c;ZII)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;Lvh/c;Z)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TU;>;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v4

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->flatMap(Lvh/o;Lvh/c;ZII)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;Lvh/c;ZI)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TU;>;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;ZI)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->flatMap(Lvh/o;Lvh/c;ZII)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;Lvh/c;ZII)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TU;>;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;ZII)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 24
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 25
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-static {p1, p2}, Lio/reactivex/internal/operators/observable/m1;->b(Lvh/o;Lvh/c;)Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Lio/reactivex/k;->flatMap(Lvh/o;ZII)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;",
            "Lvh/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/p<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    .line 12
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 13
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 14
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    new-instance v0, Lio/reactivex/internal/operators/observable/v1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/v1;-><init>(Lio/reactivex/p;Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex/k;->merge(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;",
            "Lvh/o<",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/p<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "+TR;>;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    .line 16
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    .line 17
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    .line 18
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    new-instance v0, Lio/reactivex/internal/operators/observable/v1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/v1;-><init>(Lio/reactivex/p;Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0, p4}, Lio/reactivex/k;->merge(Lio/reactivex/p;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;ZI)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;ZI)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->flatMap(Lvh/o;ZII)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lvh/o;ZII)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;ZII)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 5
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 6
    invoke-static {p4, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 7
    instance-of v0, p0, Lyh/e;

    if-eqz v0, :cond_1

    .line 8
    move-object p2, p0

    check-cast p2, Lyh/e;

    invoke-interface {p2}, Lyh/e;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 9
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    new-instance v6, Lio/reactivex/internal/operators/observable/v0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/v0;-><init>(Lio/reactivex/p;Lvh/o;ZII)V

    invoke-static {v6}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lvh/o;)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->flatMapCompletable(Lvh/o;Z)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapCompletable(Lvh/o;Z)Lio/reactivex/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;Z)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/x0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/x0;-><init>(Lio/reactivex/p;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->l(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapIterable(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/a1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/a1;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapIterable(Lvh/o;Lvh/c;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "Lvh/c<",
            "-TT;-TU;+TV;>;)",
            "Lio/reactivex/k<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lio/reactivex/internal/operators/observable/m1;->a(Lvh/o;)Lvh/o;

    move-result-object v2

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v5

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/k;->flatMap(Lvh/o;Lvh/c;ZII)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->flatMapMaybe(Lvh/o;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapMaybe(Lvh/o;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/y0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/y0;-><init>(Lio/reactivex/p;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->flatMapSingle(Lvh/o;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapSingle(Lvh/o;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/z0;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/z0;-><init>(Lio/reactivex/p;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final forEach(Lvh/g;)Lth/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;)",
            "Lth/b;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/k;->subscribe(Lvh/g;)Lth/b;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Lvh/q;)Lth/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;)",
            "Lth/b;"
        }
    .end annotation

    .line 1
    sget-object v0, Lxh/a;->f:Lvh/g;

    sget-object v1, Lxh/a;->c:Lvh/a;

    invoke-virtual {p0, p1, v0, v1}, Lio/reactivex/k;->forEachWhile(Lvh/q;Lvh/g;Lvh/a;)Lth/b;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Lvh/q;Lvh/g;)Lth/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lth/b;"
        }
    .end annotation

    .line 2
    sget-object v0, Lxh/a;->c:Lvh/a;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->forEachWhile(Lvh/q;Lvh/g;Lvh/a;)Lth/b;

    move-result-object p1

    return-object p1
.end method

.method public final forEachWhile(Lvh/q;Lvh/g;Lvh/a;)Lth/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lvh/a;",
            ")",
            "Lth/b;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 5
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/observers/ForEachWhileObserver;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/internal/observers/ForEachWhileObserver;-><init>(Lvh/q;Lvh/g;Lvh/a;)V

    .line 7
    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-object v0
.end method

.method public final groupBy(Lvh/o;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/k<",
            "Lbi/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lio/reactivex/k;->groupBy(Lvh/o;Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Lvh/o;Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;",
            "Lvh/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/k<",
            "Lbi/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/reactivex/k;->groupBy(Lvh/o;Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Lvh/o;Lvh/o;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;",
            "Lvh/o<",
            "-TT;+TV;>;Z)",
            "Lio/reactivex/k<",
            "Lbi/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->groupBy(Lvh/o;Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Lvh/o;Lvh/o;ZI)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;",
            "Lvh/o<",
            "-TT;+TV;>;ZI)",
            "Lio/reactivex/k<",
            "Lbi/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 5
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 6
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 7
    invoke-static {p4, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 8
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableGroupBy;-><init>(Lio/reactivex/p;Lvh/o;Lvh/o;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final groupBy(Lvh/o;Z)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;Z)",
            "Lio/reactivex/k<",
            "Lbi/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lio/reactivex/k;->groupBy(Lvh/o;Lvh/o;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final groupJoin(Lio/reactivex/p;Lvh/o;Lvh/o;Lvh/c;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TTRight;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lvh/o<",
            "-TTRight;+",
            "Lio/reactivex/p<",
            "TTRightEnd;>;>;",
            "Lvh/c<",
            "-TT;-",
            "Lio/reactivex/k<",
            "TTRight;>;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 3
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/i1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/i1;-><init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/o;Lvh/o;Lvh/c;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final hide()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/j1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/j1;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElements()Lio/reactivex/a;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/l1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/l1;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->l(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lxh/a;->b()Lvh/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->all(Lvh/q;)Lio/reactivex/t;

    move-result-object v0

    return-object v0
.end method

.method public final join(Lio/reactivex/p;Lvh/o;Lvh/o;Lvh/c;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TTRight;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lvh/o<",
            "-TTRight;+",
            "Lio/reactivex/p<",
            "TTRightEnd;>;>;",
            "Lvh/c<",
            "-TT;-TTRight;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    .line 3
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    .line 4
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/p1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/p1;-><init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/o;Lvh/o;Lvh/c;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final last(Ljava/lang/Object;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/s1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/s1;-><init>(Lio/reactivex/p;Ljava/lang/Object;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final lastElement()Lio/reactivex/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/r1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/r1;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->n(Lio/reactivex/g;)Lio/reactivex/g;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrError()Lio/reactivex/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/s1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/observable/s1;-><init>(Lio/reactivex/p;Ljava/lang/Object;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lio/reactivex/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o<",
            "+TR;-TT;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lifter is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/t1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/t1;-><init>(Lio/reactivex/p;Lio/reactivex/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/u1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/u1;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final materialize()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/w1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/w1;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lio/reactivex/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/c;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lio/reactivex/internal/operators/observable/x1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/x1;-><init>(Lio/reactivex/k;Lio/reactivex/c;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lio/reactivex/i;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/i<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 5
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/y1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/y1;-><init>(Lio/reactivex/k;Lio/reactivex/i;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Lio/reactivex/k;->merge(Lio/reactivex/p;Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final mergeWith(Lio/reactivex/v;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/v<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/z1;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/z1;-><init>(Lio/reactivex/k;Lio/reactivex/v;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/s;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/s;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/s;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final observeOn(Lio/reactivex/s;ZI)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/s;",
            "ZI)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/b2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/b2;-><init>(Lio/reactivex/p;Lio/reactivex/s;ZI)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final ofType(Ljava/lang/Class;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lxh/a;->j(Ljava/lang/Class;)Lvh/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->filter(Lvh/q;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/k;->cast(Ljava/lang/Class;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lxh/a;->l(Ljava/lang/Object;)Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->onErrorResumeNext(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorResumeNext(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/c2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/observable/c2;-><init>(Lio/reactivex/p;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturn(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/d2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/d2;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lxh/a;->l(Ljava/lang/Object;)Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->onErrorReturn(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final onExceptionResumeNext(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/c2;

    invoke-static {p1}, Lxh/a;->l(Ljava/lang/Object;)Lvh/o;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/observable/c2;-><init>(Lio/reactivex/p;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final onTerminateDetach()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/i0;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/i0;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final publish()Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/e2;->f(Lio/reactivex/p;)Lbi/a;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/h2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/h2;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Lvh/c;)Lio/reactivex/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/g<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/k2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/k2;-><init>(Lio/reactivex/p;Lvh/c;)V

    invoke-static {v0}, Lci/a;->n(Lio/reactivex/g;)Lio/reactivex/g;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Ljava/lang/Object;Lvh/c;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lvh/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/t<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seed is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/l2;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/l2;-><init>(Lio/reactivex/p;Ljava/lang/Object;Lvh/c;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final reduceWith(Ljava/util/concurrent/Callable;Lvh/c;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lvh/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/t<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/m2;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/m2;-><init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;Lvh/c;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final repeat()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/reactivex/k;->repeat(J)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/o2;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/o2;-><init>(Lio/reactivex/k;J)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final repeatUntil(Lvh/e;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/e;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/p2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/p2;-><init>(Lio/reactivex/k;Lvh/e;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final repeatWhen(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/p<",
            "*>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/q2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/q2;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final replay()Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/r2;->j(Lio/reactivex/p;)Lbi/a;

    move-result-object v0

    return-object v0
.end method

.method public final replay(I)Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 30
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 31
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/observable/r2;->f(Lio/reactivex/p;I)Lbi/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;)Lbi/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    .line 32
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lbi/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lbi/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 33
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 34
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 35
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    .line 36
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/r2;->h(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lbi/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(ILio/reactivex/s;)Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/s;",
            ")",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 37
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 38
    invoke-virtual {p0, p1}, Lio/reactivex/k;->replay(I)Lbi/a;

    move-result-object p1

    invoke-static {p1, p2}, Lio/reactivex/internal/operators/observable/r2;->l(Lbi/a;Lio/reactivex/s;)Lbi/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;)Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    .line 39
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lbi/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 40
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 41
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/internal/operators/observable/r2;->g(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lbi/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lio/reactivex/s;)Lbi/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/s;",
            ")",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 43
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lio/reactivex/k;->replay()Lbi/a;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/operators/observable/r2;->l(Lbi/a;Lio/reactivex/s;)Lbi/a;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/m1;->g(Lio/reactivex/k;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0, p1}, Lio/reactivex/internal/operators/observable/r2;->k(Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lvh/o;I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 6
    invoke-static {p0, p2}, Lio/reactivex/internal/operators/observable/m1;->h(Lio/reactivex/k;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/r2;->k(Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lvh/o;IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 7
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->replay(Lvh/o;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lvh/o;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 8
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 9
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "unit is null"

    .line 10
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 11
    invoke-static {p6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 12
    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/m1;->i(Lio/reactivex/k;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Ljava/util/concurrent/Callable;

    move-result-object p2

    .line 13
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/r2;->k(Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lvh/o;ILio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;I",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 14
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 15
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 16
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 17
    invoke-static {p0, p2}, Lio/reactivex/internal/operators/observable/m1;->h(Lio/reactivex/k;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    .line 18
    invoke-static {p1, p3}, Lio/reactivex/internal/operators/observable/m1;->k(Lvh/o;Lio/reactivex/s;)Lvh/o;

    move-result-object p1

    .line 19
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/r2;->k(Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lvh/o;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 20
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->replay(Lvh/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lvh/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 21
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    .line 22
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 23
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/observable/m1;->j(Lio/reactivex/k;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/r2;->k(Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final replay(Lvh/o;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    .line 25
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 26
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    invoke-static {p0}, Lio/reactivex/internal/operators/observable/m1;->g(Lio/reactivex/k;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 28
    invoke-static {p1, p2}, Lio/reactivex/internal/operators/observable/m1;->k(Lvh/o;Lio/reactivex/s;)Lvh/o;

    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Lio/reactivex/internal/operators/observable/r2;->k(Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final retry()Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lxh/a;->c()Lvh/q;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/k;->retry(JLvh/q;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lxh/a;->c()Lvh/q;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->retry(JLvh/q;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final retry(JLvh/q;)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lvh/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "predicate is null"

    .line 5
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/t2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/t2;-><init>(Lio/reactivex/k;JLvh/q;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final retry(Lvh/d;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/s2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/s2;-><init>(Lio/reactivex/k;Lvh/d;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final retry(Lvh/q;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/k;->retry(JLvh/q;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final retryUntil(Lvh/e;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/e;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lxh/a;->t(Lvh/e;)Lvh/q;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/k;->retry(JLvh/q;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final retryWhen(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lio/reactivex/p<",
            "*>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/u2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/u2;-><init>(Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final safeSubscribe(Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lio/reactivex/observers/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lio/reactivex/observers/c;

    invoke-direct {v0, p1}, Lio/reactivex/observers/c;-><init>(Lio/reactivex/r;)V

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 3
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 4
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/v2;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/v2;-><init>(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 6
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 7
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lio/reactivex/internal/operators/observable/v2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/v2;-><init>(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final sample(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    .line 9
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    new-instance v0, Lio/reactivex/internal/operators/observable/w2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/internal/operators/observable/w2;-><init>(Lio/reactivex/p;Lio/reactivex/p;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final sample(Lio/reactivex/p;Z)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    .line 11
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lio/reactivex/internal/operators/observable/w2;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/w2;-><init>(Lio/reactivex/p;Lio/reactivex/p;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final scan(Ljava/lang/Object;Lvh/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lvh/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lxh/a;->k(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/k;->scanWith(Ljava/util/concurrent/Callable;Lvh/c;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final scan(Lvh/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/c<",
            "TT;TT;TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "accumulator is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/x2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/x2;-><init>(Lio/reactivex/p;Lvh/c;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final scanWith(Ljava/util/concurrent/Callable;Lvh/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lvh/c<",
            "TR;-TT;TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/y2;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/y2;-><init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;Lvh/c;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final serialize()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/b3;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/b3;-><init>(Lio/reactivex/k;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final share()Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/k;->publish()Lbi/a;

    move-result-object v0

    invoke-virtual {v0}, Lbi/a;->e()Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final single(Ljava/lang/Object;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/d3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/d3;-><init>(Lio/reactivex/p;Ljava/lang/Object;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final singleElement()Lio/reactivex/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/c3;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/c3;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->n(Lio/reactivex/g;)Lio/reactivex/g;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrError()Lio/reactivex/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/t<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/d3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/reactivex/internal/operators/observable/d3;-><init>(Lio/reactivex/p;Ljava/lang/Object;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object v0

    return-object v0
.end method

.method public final skip(J)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1
    invoke-static {p0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/e3;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/e3;-><init>(Lio/reactivex/p;J)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p1, p2, p3}, Lio/reactivex/k;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->skipUntil(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/k;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->skipUntil(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(I)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    .line 1
    invoke-static {p0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/f3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/f3;-><init>(Lio/reactivex/p;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Ldi/a;->c()Lio/reactivex/s;

    move-result-object v4

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "ZI)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 8
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 9
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 10
    invoke-static {p6, v0}, Lxh/b;->f(ILjava/lang/String;)I

    shl-int/lit8 v7, p6, 0x1

    .line 11
    new-instance p6, Lio/reactivex/internal/operators/observable/g3;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lio/reactivex/internal/operators/observable/g3;-><init>(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;IZ)V

    invoke-static {p6}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Ldi/a;->c()Lio/reactivex/s;

    move-result-object v4

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->skipLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skipUntil(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/h3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/h3;-><init>(Lio/reactivex/p;Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final skipWhile(Lvh/q;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/i3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/i3;-><init>(Lio/reactivex/p;Lvh/q;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final sorted()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/k;->toList()Lio/reactivex/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/t;->f()Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lxh/a;->n()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lxh/a;->m(Ljava/util/Comparator;)Lvh/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->flatMapIterable(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sortFunction is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/k;->toList()Lio/reactivex/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/t;->f()Lio/reactivex/k;

    move-result-object v0

    invoke-static {p1}, Lxh/a;->m(Ljava/util/Comparator;)Lvh/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->flatMapIterable(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 3
    invoke-static {v0}, Lio/reactivex/k;->concatArray([Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Ljava/lang/Iterable;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/p;

    .line 1
    invoke-static {p1}, Lio/reactivex/k;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/k;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/k;->concatArray([Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final startWith(Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/p;

    .line 5
    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lio/reactivex/k;->concatArray([Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final varargs startWithArray([Ljava/lang/Object;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/k;->fromArray([Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {p0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 4
    invoke-static {v0}, Lio/reactivex/k;->concatArray([Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe()Lth/b;
    .locals 4

    .line 1
    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    sget-object v1, Lxh/a;->f:Lvh/g;

    sget-object v2, Lxh/a;->c:Lvh/a;

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/reactivex/k;->subscribe(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)Lth/b;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lvh/g;)Lth/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;)",
            "Lth/b;"
        }
    .end annotation

    .line 2
    sget-object v0, Lxh/a;->f:Lvh/g;

    sget-object v1, Lxh/a;->c:Lvh/a;

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/k;->subscribe(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)Lth/b;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lvh/g;Lvh/g;)Lth/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lth/b;"
        }
    .end annotation

    .line 3
    sget-object v0, Lxh/a;->c:Lvh/a;

    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/k;->subscribe(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)Lth/b;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lvh/g;Lvh/g;Lvh/a;)Lth/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lvh/a;",
            ")",
            "Lth/b;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lxh/a;->g()Lvh/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->subscribe(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)Lth/b;

    move-result-object p1

    return-object p1
.end method

.method public final subscribe(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)Lth/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lvh/a;",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;)",
            "Lth/b;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 5
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 6
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 7
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    .line 8
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)V

    .line 10
    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 11
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    :try_start_0
    invoke-static {p0, p1}, Lci/a;->y(Lio/reactivex/k;Lio/reactivex/r;)Lio/reactivex/r;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 13
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, p1}, Lio/reactivex/k;->subscribeActual(Lio/reactivex/r;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 16
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    throw v0

    :catch_0
    move-exception p1

    .line 20
    throw p1
.end method

.method protected abstract subscribeActual(Lio/reactivex/r;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/j3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/j3;-><init>(Lio/reactivex/p;Lio/reactivex/s;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final subscribeWith(Lio/reactivex/r;)Lio/reactivex/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/reactivex/r<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-object p1
.end method

.method public final switchIfEmpty(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/k3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/k3;-><init>(Lio/reactivex/p;Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final switchMap(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->switchMap(Lvh/o;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final switchMap(Lvh/o;I)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Lyh/e;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Lyh/e;

    invoke-interface {p2}, Lyh/e;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/l3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/observable/l3;-><init>(Lio/reactivex/p;Lvh/o;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapCompletable(Lvh/o;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzh/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lzh/d;-><init>(Lio/reactivex/k;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->l(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapCompletableDelayError(Lvh/o;)Lio/reactivex/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;)",
            "Lio/reactivex/a;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzh/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lzh/d;-><init>(Lio/reactivex/k;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->l(Lio/reactivex/a;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapDelayError(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->switchMapDelayError(Lvh/o;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapDelayError(Lvh/o;I)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;I)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Lyh/e;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Lyh/e;

    invoke-interface {p2}, Lyh/e;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/l3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/observable/l3;-><init>(Lio/reactivex/p;Lvh/o;IZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapMaybe(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzh/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lzh/e;-><init>(Lio/reactivex/k;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapMaybeDelayError(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/i<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzh/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lzh/e;-><init>(Lio/reactivex/k;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapSingle(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzh/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lzh/f;-><init>(Lio/reactivex/k;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final switchMapSingleDelayError(Lvh/o;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/v<",
            "+TR;>;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lzh/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lzh/f;-><init>(Lio/reactivex/k;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final take(J)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/m3;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/m3;-><init>(Lio/reactivex/p;J)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p1, p2, p3}, Lio/reactivex/k;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->takeUntil(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3, p4}, Lio/reactivex/k;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->takeUntil(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(I)Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lio/reactivex/internal/operators/observable/k1;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/k1;-><init>(Lio/reactivex/p;)V

    invoke-static {p1}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/observable/o3;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/o3;-><init>(Lio/reactivex/p;)V

    invoke-static {p1}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/n3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/n3;-><init>(Lio/reactivex/p;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Ldi/a;->c()Lio/reactivex/s;

    move-result-object v6

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/k;->takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/k;->takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "ZI)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    move-wide v2, p1

    const-string v0, "unit is null"

    move-object/from16 v6, p5

    .line 7
    invoke-static {v6, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v7, p6

    .line 8
    invoke-static {v7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    move/from16 v8, p8

    .line 9
    invoke-static {v8, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 10
    new-instance v10, Lio/reactivex/internal/operators/observable/p3;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/observable/p3;-><init>(Lio/reactivex/p;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;IZ)V

    invoke-static {v10}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 12
    invoke-static {}, Ldi/a;->c()Lio/reactivex/s;

    move-result-object v4

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 15
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "ZI)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-wide v1, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 16
    invoke-virtual/range {v0 .. v8}, Lio/reactivex/k;->takeLast(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-static {}, Ldi/a;->c()Lio/reactivex/s;

    move-result-object v4

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/k;->takeLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/q3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/q3;-><init>(Lio/reactivex/p;Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeUntil(Lvh/q;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stopPredicate is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/r3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/r3;-><init>(Lio/reactivex/p;Lvh/q;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final takeWhile(Lvh/q;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/q<",
            "-TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/s3;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/s3;-><init>(Lio/reactivex/p;Lvh/q;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final test()Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-object v0
.end method

.method public final test(Z)Lio/reactivex/observers/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/observers/e<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0}, Lio/reactivex/observers/e;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/observers/e;->dispose()V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->throttleFirst(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 2
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lio/reactivex/internal/operators/observable/t3;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/t3;-><init>(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/k;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/k;->sample(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 4
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/u3;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/u3;-><init>(Lio/reactivex/k;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleLatest(JLjava/util/concurrent/TimeUnit;Z)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->throttleLatest(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/reactivex/k;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/k;->debounce(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/k;->timeInterval(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval(Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/k;->timeInterval(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->timeInterval(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeInterval(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/v3;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/v3;-><init>(Lio/reactivex/p;Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/k;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/p;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 5
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/k;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/p;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lio/reactivex/k;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/p;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 7
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lio/reactivex/k;->timeout0(JLjava/util/concurrent/TimeUnit;Lio/reactivex/p;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TV;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    .line 10
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/k;->timeout0(Lio/reactivex/p;Lvh/o;Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lio/reactivex/p;Lvh/o;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TV;>;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    .line 12
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "other is null"

    .line 13
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lio/reactivex/k;->timeout0(Lio/reactivex/p;Lvh/o;Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TV;>;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v0}, Lio/reactivex/k;->timeout0(Lio/reactivex/p;Lvh/o;Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(Lvh/o;Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TV;>;>;",
            "Lio/reactivex/p<",
            "+TT;>;)",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lio/reactivex/k;->timeout0(Lio/reactivex/p;Lvh/o;Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/k;->timestamp(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp(Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, Lio/reactivex/k;->timestamp(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp(Ljava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->timestamp(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final timestamp(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Ldi/b<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 5
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p1, p2}, Lxh/a;->u(Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lvh/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final to(Lvh/o;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvh/o;

    invoke-interface {p1, p0}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {p1}, Lio/reactivex/internal/util/f;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/BackpressureStrategy;",
            ")",
            "Lio/reactivex/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/b;-><init>(Lio/reactivex/k;)V

    .line 2
    sget-object v1, Lio/reactivex/k$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/e;->c()Lio/reactivex/e;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lio/reactivex/internal/operators/flowable/g;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/flowable/g;-><init>(Lio/reactivex/e;)V

    invoke-static {p1}, Lci/a;->m(Lio/reactivex/e;)Lio/reactivex/e;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/e;->f()Lio/reactivex/e;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {v0}, Lio/reactivex/e;->e()Lio/reactivex/e;

    move-result-object p1

    return-object p1
.end method

.method public final toFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/observers/h;

    invoke-direct {v0}, Lio/reactivex/internal/observers/h;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribeWith(Lio/reactivex/r;)Lio/reactivex/r;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final toList()Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/t<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lio/reactivex/k;->toList(I)Lio/reactivex/t;

    move-result-object v0

    return-object v0
.end method

.method public final toList(I)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/t<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/a4;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/a4;-><init>(Lio/reactivex/p;I)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toList(Ljava/util/concurrent/Callable;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lio/reactivex/t<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/reactivex/internal/operators/observable/a4;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/a4;-><init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->p(Lio/reactivex/t;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Lvh/o;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/t<",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1}, Lxh/a;->D(Lvh/o;)Lvh/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/k;->collect(Ljava/util/concurrent/Callable;Lvh/b;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Lvh/o;Lvh/o;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;",
            "Lvh/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/t<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 3
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 4
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, Lxh/a;->E(Lvh/o;Lvh/o;)Lvh/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/k;->collect(Ljava/util/concurrent/Callable;Lvh/b;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toMap(Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;",
            "Lvh/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Lio/reactivex/t<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 6
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 7
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 8
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Lxh/a;->E(Lvh/o;Lvh/o;)Lvh/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/reactivex/k;->collect(Ljava/util/concurrent/Callable;Lvh/b;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Lvh/o;)Lio/reactivex/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;)",
            "Lio/reactivex/t<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lxh/a;->i()Lvh/o;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lvh/o;

    move-result-object v2

    .line 4
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/k;->toMultimap(Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Lvh/o;Lvh/o;)Lio/reactivex/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;",
            "Lvh/o<",
            "-TT;+TV;>;)",
            "Lio/reactivex/t<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lio/reactivex/internal/util/HashMapSupplier;->asCallable()Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lvh/o;

    move-result-object v1

    .line 7
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex/k;->toMultimap(Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;",
            "Lvh/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)",
            "Lio/reactivex/t<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lio/reactivex/internal/util/ArrayListSupplier;->asFunction()Lvh/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/reactivex/k;->toMultimap(Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toMultimap(Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;Lvh/o;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lvh/o<",
            "-TT;+TK;>;",
            "Lvh/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "Lvh/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "Lio/reactivex/t<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    .line 8
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    .line 9
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    .line 10
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionFactory is null"

    .line 11
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p1, p2, p4}, Lxh/a;->F(Lvh/o;Lvh/o;Lvh/o;)Lvh/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/reactivex/k;->collect(Ljava/util/concurrent/Callable;Lvh/b;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList()Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/t<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lxh/a;->o()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->toSortedList(Ljava/util/Comparator;)Lio/reactivex/t;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(I)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/t<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 6
    invoke-static {}, Lxh/a;->o()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/k;->toSortedList(Ljava/util/Comparator;I)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lio/reactivex/t<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 2
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lio/reactivex/k;->toList()Lio/reactivex/t;

    move-result-object v0

    invoke-static {p1}, Lxh/a;->m(Ljava/util/Comparator;)Lvh/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/t;->d(Lvh/o;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final toSortedList(Ljava/util/Comparator;I)Lio/reactivex/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "Lio/reactivex/t<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p2}, Lio/reactivex/k;->toList(I)Lio/reactivex/t;

    move-result-object p2

    invoke-static {p1}, Lxh/a;->m(Ljava/util/Comparator;)Lvh/o;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/t;->d(Lvh/o;)Lio/reactivex/t;

    move-result-object p1

    return-object p1
.end method

.method public final unsubscribeOn(Lio/reactivex/s;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/b4;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/b4;-><init>(Lio/reactivex/p;Lio/reactivex/s;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(J)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->window(JJI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJ)Lio/reactivex/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->window(JJI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJI)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "count"

    .line 3
    invoke-static {p1, p2, v0}, Lxh/b;->g(JLjava/lang/String;)J

    const-string v0, "skip"

    .line 4
    invoke-static {p3, p4, v0}, Lxh/b;->g(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    .line 5
    invoke-static {p5, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 6
    new-instance v0, Lio/reactivex/internal/operators/observable/d4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/d4;-><init>(Lio/reactivex/p;JJI)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 7
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v6

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->window(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->window(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)Lio/reactivex/k;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "I)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "timespan"

    move-wide v3, p1

    .line 9
    invoke-static {p1, p2, v0}, Lxh/b;->g(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    .line 10
    invoke-static {v5, v6, v0}, Lxh/b;->g(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    move/from16 v11, p7

    .line 11
    invoke-static {v11, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    .line 12
    invoke-static {v8, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    .line 13
    invoke-static {v7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lio/reactivex/internal/operators/observable/h4;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lio/reactivex/internal/operators/observable/h4;-><init>(Lio/reactivex/p;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JIZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 15
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JZ)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;J)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 16
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JZ)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;JZ)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "JZ)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 17
    invoke-static {}, Ldi/a;->a()Lio/reactivex/s;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JZ)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 18
    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JZ)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;J)Lio/reactivex/k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "J)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 19
    invoke-virtual/range {v0 .. v7}, Lio/reactivex/k;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JZ)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JZ)Lio/reactivex/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "JZ)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lio/reactivex/k;->window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JZI)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JZI)Lio/reactivex/k;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "JZI)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p8

    .line 21
    invoke-static {v11, v0}, Lxh/b;->f(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    .line 22
    invoke-static {v8, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p3

    .line 23
    invoke-static {v7, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move-wide/from16 v9, p5

    .line 24
    invoke-static {v9, v10, v0}, Lxh/b;->g(JLjava/lang/String;)J

    .line 25
    new-instance v0, Lio/reactivex/internal/operators/observable/h4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lio/reactivex/internal/operators/observable/h4;-><init>(Lio/reactivex/p;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JIZ)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lio/reactivex/p;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TB;>;)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->window(Lio/reactivex/p;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(Lio/reactivex/p;I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TB;>;I)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    .line 27
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 28
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 29
    new-instance v0, Lio/reactivex/internal/operators/observable/e4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/e4;-><init>(Lio/reactivex/p;Lio/reactivex/p;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;",
            "Lvh/o<",
            "-TU;+",
            "Lio/reactivex/p<",
            "TV;>;>;)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/k;->window(Lio/reactivex/p;Lvh/o;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(Lio/reactivex/p;Lvh/o;I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TU;>;",
            "Lvh/o<",
            "-TU;+",
            "Lio/reactivex/p<",
            "TV;>;>;I)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    .line 31
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    .line 32
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 33
    invoke-static {p3, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 34
    new-instance v0, Lio/reactivex/internal/operators/observable/f4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/f4;-><init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/o;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(Ljava/util/concurrent/Callable;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "TB;>;>;)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/reactivex/k;->window(Ljava/util/concurrent/Callable;I)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final window(Ljava/util/concurrent/Callable;I)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "TB;>;>;I)",
            "Lio/reactivex/k<",
            "Lio/reactivex/k<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    .line 36
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 37
    invoke-static {p2, v0}, Lxh/b;->f(ILjava/lang/String;)I

    .line 38
    new-instance v0, Lio/reactivex/internal/operators/observable/g4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/g4;-><init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;I)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/j;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT1;>;",
            "Lio/reactivex/p<",
            "TT2;>;",
            "Lio/reactivex/p<",
            "TT3;>;",
            "Lio/reactivex/p<",
            "TT4;>;",
            "Lvh/j<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    .line 15
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    .line 16
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o3 is null"

    .line 17
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o4 is null"

    .line 18
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 19
    invoke-static {p5, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-static {p5}, Lxh/a;->y(Lvh/j;)Lvh/o;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 21
    invoke-virtual {p0, v0, p5}, Lio/reactivex/k;->withLatestFrom([Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Lio/reactivex/p;Lio/reactivex/p;Lio/reactivex/p;Lvh/i;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT1;>;",
            "Lio/reactivex/p<",
            "TT2;>;",
            "Lio/reactivex/p<",
            "TT3;>;",
            "Lvh/i<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    .line 9
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    .line 10
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o3 is null"

    .line 11
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 12
    invoke-static {p4, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-static {p4}, Lxh/a;->x(Lvh/i;)Lvh/o;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 14
    invoke-virtual {p0, v0, p4}, Lio/reactivex/k;->withLatestFrom([Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Lio/reactivex/p;Lio/reactivex/p;Lvh/h;)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "TT1;>;",
            "Lio/reactivex/p<",
            "TT2;>;",
            "Lvh/h<",
            "-TT;-TT1;-TT2;TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    .line 5
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 6
    invoke-static {p3, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Lxh/a;->w(Lvh/h;)Lvh/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/p;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 8
    invoke-virtual {p0, v0, p3}, Lio/reactivex/k;->withLatestFrom([Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Lio/reactivex/p;Lvh/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TU;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/i4;

    invoke-direct {v0, p0, p2, p1}, Lio/reactivex/internal/operators/observable/i4;-><init>(Lio/reactivex/p;Lvh/c;Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom(Ljava/lang/Iterable;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/p<",
            "*>;>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    .line 25
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 26
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lio/reactivex/internal/operators/observable/j4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/j4;-><init>(Lio/reactivex/p;Ljava/lang/Iterable;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final withLatestFrom([Lio/reactivex/p;Lvh/o;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/reactivex/p<",
            "*>;",
            "Lvh/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    .line 22
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    .line 23
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lio/reactivex/internal/operators/observable/j4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/j4;-><init>(Lio/reactivex/p;[Lio/reactivex/p;Lvh/o;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/p;Lvh/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TU;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 4
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p0, p1, p2}, Lio/reactivex/k;->zip(Lio/reactivex/p;Lio/reactivex/p;Lvh/c;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/p;Lvh/c;Z)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TU;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;Z)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2, p3}, Lio/reactivex/k;->zip(Lio/reactivex/p;Lio/reactivex/p;Lvh/c;Z)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Lio/reactivex/p;Lvh/c;ZI)Lio/reactivex/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/p<",
            "+TU;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;ZI)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Lio/reactivex/k;->zip(Lio/reactivex/p;Lio/reactivex/p;Lvh/c;ZI)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public final zipWith(Ljava/lang/Iterable;Lvh/c;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;)",
            "Lio/reactivex/k<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    .line 2
    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/l4;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/l4;-><init>(Lio/reactivex/k;Ljava/lang/Iterable;Lvh/c;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method
