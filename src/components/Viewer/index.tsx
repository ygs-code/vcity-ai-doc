import React, { FC, useState, useCallback, memo } from 'react';
import BrowserOnly from '@docusaurus/BrowserOnly'; // 导入组件


// 客户端组件
export default ({
    imgUrl
}) => {

    return <BrowserOnly fallback={<div>loading...</div>}>
        {() => {
            // 1. 动态导入 react-viewer 组件和样式（仅浏览器端加载）
            const Viewer = React.lazy(() =>
                import('react-viewer').then(mod => ({
                    default: mod.default
                }))
            );
            // 动态导入样式（关键：避免服务器端解析样式时报错）
            // import('react-viewer/dist/index.css');

            // 2. 组件内部状态（控制预览框显示/隐藏）


            const [visible, setVisible] = useState(false);
            const handleClick = useCallback(() => {
                setVisible(true);
            }, []);
            const handleClose = useCallback(() => {
                setVisible(false);
            }, []);

            return (
                <React.Suspense fallback={<div>loading...</div>}>
                    <div>
                        <div
                            style={{
                                cursor: "pointer"
                            }}
                            onClick={handleClick}>
                            <img src={imgUrl} />
                        </div>
                        <Viewer
                            visible={visible}
                            onClose={handleClose}
                            images={[{ src: imgUrl, alt: '' }]}
                        />
                    </div>
                </React.Suspense>
            );
        }}
    </BrowserOnly>
}


