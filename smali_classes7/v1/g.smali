.class public final synthetic Lv1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lv1/o;

.field public final synthetic b:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Lv1/o;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/g;->a:Lv1/o;

    iput-object p2, p0, Lv1/g;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv1/g;->a:Lv1/o;

    iget-object v1, p0, Lv1/g;->b:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lv1/o;->g(Lv1/o;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
