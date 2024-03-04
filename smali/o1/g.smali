.class Lo1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ly1/a;

.field private final c:Ly1/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ly1/a;Ly1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo1/g;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lo1/g;->b:Ly1/a;

    .line 4
    iput-object p3, p0, Lo1/g;->c:Ly1/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lo1/f;
    .locals 3

    iget-object v0, p0, Lo1/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lo1/g;->b:Ly1/a;

    iget-object v2, p0, Lo1/g;->c:Ly1/a;

    invoke-static {v0, v1, v2, p1}, Lo1/f;->a(Landroid/content/Context;Ly1/a;Ly1/a;Ljava/lang/String;)Lo1/f;

    move-result-object p1

    return-object p1
.end method
