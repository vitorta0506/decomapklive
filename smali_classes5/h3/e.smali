.class public final synthetic Lh3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/m$h$a;


# instance fields
.field public final synthetic a:Lh3/m$d;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lh3/m$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/e;->a:Lh3/m$d;

    iput-object p2, p0, Lh3/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILv2/o0;[I)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lh3/e;->a:Lh3/m$d;

    iget-object v1, p0, Lh3/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lh3/m;->r(Lh3/m$d;Ljava/lang/String;ILv2/o0;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
