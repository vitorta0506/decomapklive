package com.tencent.bugly.crashreport.crash.h5;

import android.util.Base64;
import com.tencent.bugly.proguard.x;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f30408a = "1.0";

    /* renamed from: b  reason: collision with root package name */
    private static String f30409b = "IWZ1bmN0aW9uKGEsYil7ZnVuY3Rpb24gaihhLGIpe3RyeXtpZigiZnVuY3Rpb24iIT10eXBlb2YgYSlyZXR1cm4gYTtpZighYS5CdWdseSl7dmFyIGY9bSgpO2EuQnVnbHk9ZnVuY3Rpb24oaCl7aWYoYiYmYi5ldmVudEhhbmRsZXImJihkPWgpLGU9ZiwhZyl7dmFyIGo9YS5hcHBseSh0aGlzLGFyZ3VtZW50cyk7cmV0dXJuIGU9bnVsbCxqfXRyeXtyZXR1cm4gYS5hcHBseSh0aGlzLGFyZ3VtZW50cyl9Y2F0Y2goaSl7dGhyb3cgYy5yZXBvcnRFeGNlcHRpb24oaSxudWxsLG51bGwsImVycm9yIiksdSgpLGl9ZmluYWxseXtlPW51bGx9fSxhLkJ1Z2x5LkJ1Z2x5PWEuQnVnbHl9cmV0dXJuIGEuQnVnbHl9Y2F0Y2goaCl7cmV0dXJuIGF9fWZ1bmN0aW9uIGwoKXtrPSExfWZ1bmN0aW9uIG0oKXt2YXIgYixhPWRvY3VtZW50LmN1cnJlbnRTY3JpcHR8fGU7cmV0dXJuIWEmJmsmJihiPWRvY3VtZW50LnNjcmlwdHN8fGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCJzY3JpcHQiKSxhPWJbYi5sZW5ndGgtMV0pLGF9ZnVuY3Rpb24gcShiKXt2YXIgYz1hLmNvbnNvbGU7dm9pZCAwIT09YyYmdm9pZCAwIT09Yy5sb2cmJmMubG9nKCJbQnVnbHldICIrYil9ZnVuY3Rpb24gcihiKXt2YXIgYyxkO2lmKGkmJihpLT0xLGM9W2IubmFtZSxiLm1lc3NhZ2UsYi5zdGFja3RyYWNlXS5qb2luKCJ8IiksYyE9PWYpKXJldHVybiBmPWMsZD17cHJvamVjdFJvb3Q6YS5sb2NhdGlvbi5wcm90b2NvbCsiLy8iK2EubG9jYXRpb24uaG9zdCxjb250ZXh0OmEubG9jYXRpb24ucGF0aG5hbWUsdXJsOmEubG9jYXRpb24uaHJlZix1c2VyQWdlbnQ6bmF2aWdhdG9yLnVzZXJBZ2VudCxsYW5ndWFnZTpuYXZpZ2F0b3IubGFuZ3VhZ2V8fG5hdmlnYXRvci51c2VyTGFuZ3VhZ2UsbmFtZTpiLm5hbWUsbWVzc2FnZTpiLm1lc3NhZ2Usc3RhY2t0cmFjZTpiLnN0YWNrdHJhY2UsZmlsZTpiLmZpbGUsbGluZU51bWJlcjpiLmxpbmVOdW1iZXIsY29sdW1uTnVtYmVyOmIuY29sdW1uTnVtYmVyfSwwPT09ZC5saW5lTnVtYmVyJiYvU2NyaXB0IGVycm9yXC4/Ly50ZXN0KGQubWVzc2FnZSk/cSgiSWdub3JpbmcgY3Jvc3MtZG9tYWluIHNjcmlwdCBlcnJvci4iKTooInVuZGVmaW5lZCIhPXR5cGVvZiBleGNlcHRpb25SZXBvcnRlciYmbnVsbCE9ZXhjZXB0aW9uUmVwb3J0ZXI/ZXhjZXB0aW9uUmVwb3J0ZXIucmVwb3J0SlNFeGNlcHRpb24oZCk6InVuZGVmaW5lZCIhPXR5cGVvZiBleGNlcHRpb25VcGxvYWRlciYmbnVsbCE9ZXhjZXB0aW9uVXBsb2FkZXImJmV4Y2VwdGlvblVwbG9hZGVyLnJlcG9ydEpTRXhjZXB0aW9uKEpTT04uc3RyaW5naWZ5KGQpKSx2b2lkIDApfWZ1bmN0aW9uIHMoKXt2YXIgYSxiLGYsZyxoLGM9MTAsZD0iW2Fub255bW91c10iO3RyeXt0aHJvdyBuZXcgRXJyb3IoIiIpfWNhdGNoKGUpe2E9IjxnZW5lcmF0ZWQ+XG4iLGI9dChlKX1pZighYil7YT0iPGdlbmVyYXRlZC1pZT5cbiIsZj1bXTt0cnl7Zm9yKGc9YXJndW1lbnRzLmNhbGxlZS5jYWxsZXIuY2FsbGVyO2cmJmYubGVuZ3RoPGM7KWg9bi50ZXN0KGcudG9TdHJpbmcoKSk/UmVnRXhwLiQxfHxkOmQsZi5wdXNoKGgpLGc9Zy5jYWxsZXJ9Y2F0Y2goaSl7cShpKX1iPWYuam9pbigiXG4iKX1yZXR1cm4gYn1mdW5jdGlvbiB0KGEpe3JldHVybiBhLnN0YWNrdHJhY2V8fGEuc3RhY2t8fGEuYmFja3RyYWNlfWZ1bmN0aW9uIHUoKXtoKz0xLGEuc2V0VGltZW91dChmdW5jdGlvbigpe2gtPTF9KX1mdW5jdGlvbiB3KGIsYyxkKXt2YXIgZT1iW2NdLGY9ZChlKTtiW2NdPWYsInVuZGVmaW5lZCIhPXR5cGVvZiBCdWdseV9URVNUSU5HJiZhLnVuZG8mJmEudW5kby5wdXNoKGZ1bmN0aW9uKCl7YltjXT1lfSl9dmFyIGQsZSxmLGMsZyxoLGksayxuLG8seDtpZih2b2lkIDA9PT1hLkJ1Z2x5KXtpZihjPXt9LGc9ITAsaD0wLGk9MTAsYy5ub0NvbmZsaWN0PWZ1bmN0aW9uKCl7cmV0dXJuIGEuQnVnbHk9YixjfSxjLnJlZnJlc2g9ZnVuY3Rpb24oKXtpPTEwfSxjLnJlcG9ydEV4Y2VwdGlvbj1mdW5jdGlvbihhLGIpe2EmJnIoe25hbWU6Ynx8YS5uYW1lLG1lc3NhZ2U6YS5tZXNzYWdlfHxhLmRlc2NyaXB0aW9uLHN0YWNrdHJhY2U6dChhKXx8cygpLGZpbGU6YS5maWxlTmFtZXx8YS5zb3VyY2VVUkwsbGluZU51bWJlcjphLmxpbmVOdW1iZXJ8fGEubGluZSxjb2x1bW5OdW1iZXI6YS5jb2x1bW5OdW1iZXI/YS5jb2x1bW5OdW1iZXIrMTp2b2lkIDB9KX0saz0iY29tcGxldGUiIT09ZG9jdW1lbnQucmVhZHlTdGF0ZSxkb2N1bWVudC5hZGRFdmVudExpc3RlbmVyPyhkb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKCJET01Db250ZW50TG9hZGVkIixsLCEwKSxhLmFkZEV2ZW50TGlzdGVuZXIoImxvYWQiLGwsITApKTphLmF0dGFjaEV2ZW50KCJvbmxvYWQiLGwpLG49L2Z1bmN0aW9uXHMqKFtcd1wtJF0rKT9ccypcKC9pLG89ZG9jdW1lbnQuZ2V0RWxlbWVudHNCeVRhZ05hbWUoInNjcmlwdCIpLG9bby5sZW5ndGgtMV0sYS5hdG9iKXtpZihhLkVycm9yRXZlbnQpdHJ5ezA9PT1uZXcgYS5FcnJvckV2ZW50KCJ0ZXN0IikuY29sbm8mJihnPSExKX1jYXRjaCh2KXt9fWVsc2UgZz0hMTt3KGEsIm9uZXJyb3IiLGZ1bmN0aW9uKGIpe3JldHVybiJ1bmRlZmluZWQiIT10eXBlb2YgQnVnbHlfVEVTVElORyYmKGMuX29uZXJyb3I9YiksZnVuY3Rpb24oZCxmLGcsaSxqKXshaSYmYS5ldmVudCYmKGk9YS5ldmVudC5lcnJvckNoYXJhY3RlciksZT1udWxsLGh8fHIoe25hbWU6aiYmai5uYW1lLG1lc3NhZ2U6ZCxmaWxlOmYsbGluZU51bWJlcjpnLGNvbHVtbk51bWJlcjppLHN0YWNrdHJhY2U6aiYmdChqKXx8cygpfSksInVuZGVmaW5lZCIhPXR5cGVvZiBCdWdseV9URVNUSU5HJiYoYj1jLl9vbmVycm9yKSxiJiZiKGQsZixnLGksail9fSkseD1mdW5jdGlvbihhKXtyZXR1cm4gZnVuY3Rpb24oYixjKXtpZigiZnVuY3Rpb24iPT10eXBlb2YgYil7Yj1qKGIpO3ZhciBkPUFycmF5LnByb3RvdHlwZS5zbGljZS5jYWxsKGFyZ3VtZW50cywyKTtyZXR1cm4gYShmdW5jdGlvbigpe2IuYXBwbHkodGhpcyxkKX0sYyl9cmV0dXJuIGEoYixjKX19LHcoYSwic2V0VGltZW91dCIseCksdyhhLCJzZXRJbnRlcnZhbCIseCksYS5yZXF1ZXN0QW5pbWF0aW9uRnJhbWUmJncoYSwicmVxdWVzdEFuaW1hdGlvbkZyYW1lIixmdW5jdGlvbihhKXtyZXR1cm4gZnVuY3Rpb24oYil7cmV0dXJuIGEoaihiKSl9fSksYS5zZXRJbW1lZGlhdGUmJncoYSwic2V0SW1tZWRpYXRlIixmdW5jdGlvbihhKXtyZXR1cm4gZnVuY3Rpb24oKXt2YXIgYz1BcnJheS5wcm90b3R5cGUuc2xpY2UuY2FsbChhcmd1bWVudHMpO3JldHVybiBjWzBdPWooY1swXSksYS5hcHBseSh0aGlzLGMpfX0pLCJFdmVudFRhcmdldCBXaW5kb3cgTm9kZSBBcHBsaWNhdGlvbkNhY2hlIEF1ZGlvVHJhY2tMaXN0IENoYW5uZWxNZXJnZXJOb2RlIENyeXB0b09wZXJhdGlvbiBFdmVudFNvdXJjZSBGaWxlUmVhZGVyIEhUTUxVbmtub3duRWxlbWVudCBJREJEYXRhYmFzZSBJREJSZXF1ZXN0IElEQlRyYW5zYWN0aW9uIEtleU9wZXJhdGlvbiBNZWRpYUNvbnRyb2xsZXIgTWVzc2FnZVBvcnQgTW9kYWxXaW5kb3cgTm90aWZpY2F0aW9uIFNWR0VsZW1lbnRJbnN0YW5jZSBTY3JlZW4gVGV4dFRyYWNrIFRleHRUcmFja0N1ZSBUZXh0VHJhY2tMaXN0IFdlYlNvY2tldCBXZWJTb2NrZXRXb3JrZXIgV29ya2VyIFhNTEh0dHBSZXF1ZXN0IFhNTEh0dHBSZXF1ZXN0RXZlbnRUYXJnZXQgWE1MSHR0cFJlcXVlc3RVcGxvYWQiLnJlcGxhY2UoL1x3Ky9nLGZ1bmN0aW9uKGIpe3ZhciBjPWFbYl0mJmFbYl0ucHJvdG90eXBlO2MmJmMuaGFzT3duUHJvcGVydHkmJmMuaGFzT3duUHJvcGVydHkoImFkZEV2ZW50TGlzdGVuZXIiKSYmKHcoYywiYWRkRXZlbnRMaXN0ZW5lciIsZnVuY3Rpb24oYSl7cmV0dXJuIGZ1bmN0aW9uKGIsYyxkLGUpe3RyeXtjJiZjLmhhbmRsZUV2ZW50JiYoYy5oYW5kbGVFdmVudD1qKGMuaGFuZGxlRXZlbnQse2V2ZW50SGFuZGxlcjohMH0pKX1jYXRjaChmKXtxKGYpfXJldHVybiBhLmNhbGwodGhpcyxiLGooYyx7ZXZlbnRIYW5kbGVyOiEwfSksZCxlKX19KSx3KGMsInJlbW92ZUV2ZW50TGlzdGVuZXIiLGZ1bmN0aW9uKGEpe3JldHVybiBmdW5jdGlvbihiLGMsZCxlKXtyZXR1cm4gYS5jYWxsKHRoaXMsYixjLGQsZSksYS5jYWxsKHRoaXMsYixqKGMpLGQsZSl9fSkpfSksYS5CdWdseT1jLCJmdW5jdGlvbiI9PXR5cGVvZiBkZWZpbmUmJmRlZmluZS5hbWQ/ZGVmaW5lKFtdLGZ1bmN0aW9uKCl7cmV0dXJuIGN9KToib2JqZWN0Ij09dHlwZW9mIG1vZHVsZSYmIm9iamVjdCI9PXR5cGVvZiBtb2R1bGUuZXhwb3J0cyYmKG1vZHVsZS5leHBvcnRzPWMpfX0od2luZG93LHdpbmRvdy5CdWdseSk7";

    public static String a() {
        try {
            return new String(Base64.decode(f30409b, 0));
        } catch (Throwable th2) {
            if (x.a(th2)) {
                return null;
            }
            th2.printStackTrace();
            return null;
        }
    }

    public static String b() {
        return f30408a;
    }
}
