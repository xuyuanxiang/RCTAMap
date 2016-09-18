//noinspection JSAnnotator
import React, {Component, PropTypes} from 'react';
import {requireNativeComponent} from 'react-native';

class MapView extends Component {
    static propTypes = {
        showsCompass: PropTypes.bool,
        showsScale: PropTypes.bool,
        rotateEnabled: PropTypes.bool,
        zoomEnabled: PropTypes.bool,
        zoomLevel: PropTypes.number,
        center: PropTypes.shape({
            latitude: PropTypes.number,
            longitude: PropTypes.number
        })
    };

    render() {
        return (
            <RCTAMap {...this.props}/>
        )
    }
}

const RCTAMap = requireNativeComponent('RCTAMap', MapView);

module.exports = MapView;
