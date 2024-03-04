.class public final synthetic Lv1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lv1/o;

.field public final synthetic b:Ln1/o;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lv1/o;Ln1/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/l;->a:Lv1/o;

    iput-object p2, p0, Lv1/l;->b:Ln1/o;

    iput p3, p0, Lv1/l;->c:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lv1/l;->a:Lv1/o;

    iget-object v1, p0, Lv1/l;->b:Ln1/o;

    iget v2, p0, Lv1/l;->c:I

    invoke-static {v0, v1, v2}, Lv1/o;->h(Lv1/o;Ln1/o;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
