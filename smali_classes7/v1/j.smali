.class public final synthetic Lv1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lv1/o;

.field public final synthetic b:Ln1/o;


# direct methods
.method public synthetic constructor <init>(Lv1/o;Ln1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/j;->a:Lv1/o;

    iput-object p2, p0, Lv1/j;->b:Ln1/o;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv1/j;->a:Lv1/o;

    iget-object v1, p0, Lv1/j;->b:Ln1/o;

    invoke-static {v0, v1}, Lv1/o;->b(Lv1/o;Ln1/o;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
