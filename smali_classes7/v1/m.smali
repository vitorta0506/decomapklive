.class public final synthetic Lv1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lv1/o;

.field public final synthetic b:Ln1/o;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lv1/o;Ln1/o;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/m;->a:Lv1/o;

    iput-object p2, p0, Lv1/m;->b:Ln1/o;

    iput-wide p3, p0, Lv1/m;->c:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lv1/m;->a:Lv1/o;

    iget-object v1, p0, Lv1/m;->b:Ln1/o;

    iget-wide v2, p0, Lv1/m;->c:J

    invoke-static {v0, v1, v2, v3}, Lv1/o;->f(Lv1/o;Ln1/o;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
