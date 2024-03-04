.class public final synthetic Lh3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/m$h$a;


# instance fields
.field public final synthetic a:Lh3/m;

.field public final synthetic b:Lh3/m$d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lh3/m;Lh3/m$d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/g;->a:Lh3/m;

    iput-object p2, p0, Lh3/g;->b:Lh3/m$d;

    iput-boolean p3, p0, Lh3/g;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ILv2/o0;[I)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lh3/g;->a:Lh3/m;

    iget-object v1, p0, Lh3/g;->b:Lh3/m$d;

    iget-boolean v2, p0, Lh3/g;->c:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lh3/m;->s(Lh3/m;Lh3/m$d;ZILv2/o0;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
