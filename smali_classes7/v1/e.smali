.class public final synthetic Lv1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lw1/d;


# direct methods
.method public synthetic constructor <init>(Lw1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/e;->a:Lw1/d;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv1/e;->a:Lw1/d;

    invoke-interface {v0}, Lw1/d;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method