.class public final synthetic Lv1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/a$a;


# instance fields
.field public final synthetic a:Lv1/o;


# direct methods
.method public synthetic constructor <init>(Lv1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/f;->a:Lv1/o;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv1/f;->a:Lv1/o;

    invoke-static {v0}, Lv1/o;->i(Lv1/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
