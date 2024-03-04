.class public Loa/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/recyclerview/widget/RecyclerView;I)Loa/b;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Loa/a;

    new-instance v0, Lpa/b;

    invoke-direct {v0, p0}, Lpa/b;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v0}, Loa/a;-><init>(Lpa/a;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p1, Loa/i;

    new-instance v0, Lpa/b;

    invoke-direct {v0, p0}, Lpa/b;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v0}, Loa/i;-><init>(Lpa/a;)V

    return-object p1
.end method
