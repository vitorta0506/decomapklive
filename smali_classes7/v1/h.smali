.class public final synthetic Lv1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lv1/o;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Ln1/o;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lv1/o;Ljava/lang/Iterable;Ln1/o;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/h;->a:Lv1/o;

    iput-object p2, p0, Lv1/h;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lv1/h;->c:Ln1/o;

    iput-wide p4, p0, Lv1/h;->d:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lv1/h;->a:Lv1/o;

    iget-object v1, p0, Lv1/h;->b:Ljava/lang/Iterable;

    iget-object v2, p0, Lv1/h;->c:Ln1/o;

    iget-wide v3, p0, Lv1/h;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lv1/o;->e(Lv1/o;Ljava/lang/Iterable;Ln1/o;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
